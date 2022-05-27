<?php

function appEnvUrl(string $path) {
	return (env('APP_URL') . '/' . $path);
}