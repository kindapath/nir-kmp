journal/
├── androidApp/ # Android entrypoint
├── iosApp/ # iOS entrypoint
├── desktopApp/ # Desktop entrypoint
├── webApp/ # Web entrypoint
│
├── shared/ # Оркестрация приложения
│ ├── src/commonMain/ # App, Navigation, DI, Lifecycle
│ ├── src/androidMain/ # Android platform wiring
│ ├── src/iosMain/ # iOS platform wiring
│ ├── src/jvmMain/ # Desktop platform wiring
│ ├── src/jsMain/ # Web platform wiring
│ └── src/nonJsMain/ # PowerSync connector wiring (non-web)
│
├── features/ # Фичи
│ ├── auth/
│ │ ├── api/ # Контракты auth
│ │ └── impl/ # Реализация auth (Supabase)
│ └── entries/
│ ├── api/ # Контракты entries
│ ├── impl/ # Реализация entries
│ │ ├── src/commonMain/ # Repository, use-cases, presentation
│ │ ├── src/nonJsMain/ # SQLDelight/DAO + PowerSync path
│ │ └── src/jsMain/ # Supabase PostgREST + Realtime path
│ └── schema/ # SQLDelight schema (.sq)
│
├── data/
│ └── database/ # Data layer
│ ├── src/commonMain/ # SharedDatabase, DAO, SyncManager
│ ├── src/nonJsMain/ # PowerSyncManager, PowerSync schema
│ ├── src/androidMain/ # Android DB driver
│ ├── src/iosMain/ # iOS DB driver
│ ├── src/jvmMain/ # Desktop DB driver
│ └── src/jsMain/ # Web DB driver + NoOpSyncManager
│
└── common/
├── network/ # Supabase/Ktor client + ApiConfig
└── ui/ # Общие UI-компоненты
