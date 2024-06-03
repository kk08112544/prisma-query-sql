import { Module } from '@nestjs/common';
import { DvdModule } from './dvd/dvd.module';
import { FileModule } from './file/file.module';

@Module({
  imports: [
    DvdModule,
   FileModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
