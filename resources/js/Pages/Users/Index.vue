<template>
  <Head title="Usuarios" />

  <AuthenticatedLayout>
    <template #header> Usuarios Colaborando </template>

    <div class="p-4 bg-white rounded-lg shadow-xs">
      <div class="overflow-hidden mb-8 w-full rounded-lg border shadow-xs">
        <div class="overflow-x-auto w-full">
          <table class="w-full whitespace-no-wrap">
            <thead>
              <tr
                class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 border-b"
              >
                <th class="px-4 py-3">Nombre</th>
                <th class="px-4 py-3">Correo Electronico</th>
              </tr>
            </thead>
            <tbody class="bg-white divide-y">
              <tr
                v-for="user in users.data"
                :key="user.id"
                class="text-gray-700"
              >
                <td class="px-4 py-3 text-sm">
                  {{ user.name }}
                </td>
                <td class="px-4 py-3 text-sm">
                  {{ user.email }}
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div
          class="px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase bg-gray-50 border-t sm:grid-cols-9"
        >
          <pagination :links="users.links" />
        </div>
      </div>
    </div>
  </AuthenticatedLayout>
</template>

<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import Pagination from "@/Components/Pagination.vue";
import { Head } from "@inertiajs/vue3";

const props = defineProps({
  users: Object,
});
</script>
