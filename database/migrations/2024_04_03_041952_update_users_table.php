<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            if (!Schema::hasColumn('users', 'firstName')) {
                $table->string('firstName');
            }
            if (!Schema::hasColumn('users', 'lastName')) {
                $table->string('lastName');
            }
            if (!Schema::hasColumn('users', 'maidenName')) {
                $table->string('maidenName')->nullable();
            }
            if (!Schema::hasColumn('users', 'age')) {
                $table->integer('age');
            }
            if (!Schema::hasColumn('users', 'gender')) {
                $table->string('gender');
            }
            if (!Schema::hasColumn('users', 'email')) {
                $table->string('email')->unique();
            }
            if (!Schema::hasColumn('users', 'phone')) {
                $table->string('phone');
            }
            if (!Schema::hasColumn('users', 'username')) {
                $table->string('username')->unique();
            }
            if (!Schema::hasColumn('users', 'password')) {
                $table->string('password');
            }
            if (!Schema::hasColumn('users', 'birthDate')) {
                $table->date('birthDate');
            }
            if (!Schema::hasColumn('users', 'image')) {
                $table->string('image')->nullable();
            }
            if (!Schema::hasColumn('users', 'bloodGroup')) {
                $table->string('bloodGroup')->nullable();
            }
            if (!Schema::hasColumn('users', 'height')) {
                $table->integer('height')->nullable();
            }
            if (!Schema::hasColumn('users', 'weight')) {
                $table->decimal('weight', 8, 2)->nullable();
            }
            if (!Schema::hasColumn('users', 'eyeColor')) {
                $table->string('eyeColor')->nullable();
            }
            if (!Schema::hasColumn('users', 'hair')) {
                $table->json('hair')->nullable();
            }
            if (!Schema::hasColumn('users', 'domain')) {
                $table->string('domain')->nullable();
            }
            if (!Schema::hasColumn('users', 'ip')) {
                $table->string('ip')->nullable();
            }
            if (!Schema::hasColumn('users', 'address')) {
                $table->json('address')->nullable();
            }
            if (!Schema::hasColumn('users', 'macAddress')) {
                $table->string('macAddress')->nullable();
            }
            if (!Schema::hasColumn('users', 'university')) {
                $table->string('university')->nullable();
            }
            if (!Schema::hasColumn('users', 'bank')) {
                $table->json('bank')->nullable();
            }
            if (!Schema::hasColumn('users', 'company')) {
                $table->json('company')->nullable();
            }
            if (!Schema::hasColumn('users', 'ein')) {
                $table->string('ein')->nullable();
            }
            if (!Schema::hasColumn('users', 'ssn')) {
                $table->string('ssn')->nullable();
            }
            if (!Schema::hasColumn('users', 'userAgent')) {
                $table->string('userAgent')->nullable();
            }
            if (!Schema::hasColumn('users', 'crypto')) {
                $table->json('crypto')->nullable();
            }
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn([
                'firstName',
                'lastName',
                'maidenName',
                'age',
                'gender',
                'email',
                'phone',
                'username',
                'password',
                'birthDate',
                'image',
                'bloodGroup',
                'height',
                'weight',
                'eyeColor',
                'hair',
                'domain',
                'ip',
                'address',
                'macAddress',
                'university',
                'bank',
                'company',
                'ein',
                'ssn',
                'userAgent',
                'crypto',
                // Drop other added columns as needed
            ]);
        });
    }
}
