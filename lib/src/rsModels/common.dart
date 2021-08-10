/*
 *  elRepo.io decentralized culture repository
 *
 *  Copyright (C) 2019-2021  Asociación Civil Altermundi <info@altermundi.net>
 *
 *  This program is free software: you can redistribute it and/or modify it under
 *  the terms of the GNU Affero General Public License as published by the
 *  Free Software Foundation, version 3.
 *
 *  This program is distributed in the hope that it will be useful, but WITHOUT
 *  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 *  FOR A PARTICULAR PURPOSE.
 *  See the GNU Affero General Public License for more details.
 *
 *  You should have received a copy of the GNU Affero General Public License
 *  along with this program. If not, see <https://www.gnu.org/licenses/>
 *
 *  SPDX-FileCopyrightText:  2019-2021 Asociación Civil Altermundi <info@altermundi.net>
 *  SPDX-License-Identifier: AGPL-3.0-only
 *
 */

part of rsModels;

class RsInt64 {
  String xstr64;
  int xint64;

  RsInt64({this.xint64 = 0, this.xstr64 = '0'});

  RsInt64.fromJson(Map<String, dynamic> jsonObj)
      : this(xstr64: jsonObj['xstr64'], xint64: jsonObj['xint64']);
}
