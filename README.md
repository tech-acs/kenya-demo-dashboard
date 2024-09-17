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
