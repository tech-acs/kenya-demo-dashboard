## Deployment

### Sub-folder hosting quirk

When the dashboard is hosted in a sub-folder, when the url is like www.somedomain.org/demo-dashboard, you will have to add the following code
to the boot method of the AppServiceProvider class (app/Providers/AppServiceProvider.php)

```php
Livewire::setUpdateRoute(function ($handle) {
    return Route::post('/demo-dashboard/livewire/update', $handle);
});

Livewire::setScriptRoute(function ($handle) {
    return Route::get('/demo-dashboard/livewire/livewire.js', $handle);
});
```

You will also need to add these two use statements to the top of the file

```php
use Illuminate\Support\Facades\Route;
use Livewire\Livewire;
```

The following new route needs to go into the routes/web.php file
```php
use Illuminate\Support\Facades\Route;
 
Route::post('/livewire/update', [\Livewire\Mechanisms\HandleRequests\HandleRequests::class, 'handleUpdate'])->middleware('web');
```

Lastly, you also need to publish the livewire assets

```php
php artisan vendor:publish --force --tag=livewire:assets
```
