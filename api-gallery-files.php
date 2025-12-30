<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$galleryFolder = __DIR__ . '/Postivevocab';

try {
    $files = scandir($galleryFolder);
    
    // Filter for image and video files only
    $mediaFiles = array_filter($files, function($file) use ($galleryFolder) {
        if ($file === '.' || $file === '..') return false;
        
        $ext = strtolower(pathinfo($file, PATHINFO_EXTENSION));
        $validExtensions = ['jpg', 'jpeg', 'png', 'gif', 'mp4', 'webm', 'mov'];
        
        return in_array($ext, $validExtensions);
    });
    
    // Sort files by name
    sort($mediaFiles);
    
    echo json_encode(array_values($mediaFiles));
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Failed to read gallery folder']);
}
?>
