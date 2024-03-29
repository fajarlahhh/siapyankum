<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            PenggunaTableSeeder::class,
            RoleTableSeeder::class,
            ModelHasRolesTableSeeder::class,
            PermissionTableSeeder::class
        ]);
    }
}
