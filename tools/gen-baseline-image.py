#!/usr/bin/env python3
"""Generate literal Lean ROM/native/data bytes from the tested RV64 ELF."""
import argparse
import struct
from pathlib import Path


def literal_file(path, name, values, width=8):
    digits = width // 4
    rows = ["    " + ", ".join(f"0x{x:0{digits}x}" for x in values[i:i+16])
            for i in range(0, len(values), 16)]
    path.write_text("import Std\n\nnamespace InitECandidate\n\ndef " + name +
                    f" : List (BitVec {width}) := [\n" + ",\n".join(rows) +
                    "\n  ]\n\nend InitECandidate\n")


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("elf", type=Path)
    ap.add_argument("--output-dir", type=Path, default=Path("submission/InitECandidate"))
    args = ap.parse_args()
    blob = args.elf.read_bytes()
    if blob[:6] != b"\x7fELF\x02\x01":
        raise SystemExit("expected a little-endian ELF64")
    phoff = struct.unpack_from("<Q", blob, 32)[0]
    phsize, phcount = struct.unpack_from("<HH", blob, 54)
    segments = []
    for i in range(phcount):
        kind, flags, offset, vaddr, paddr, size, memsize, align = struct.unpack_from(
            "<IIQQQQQQ", blob, phoff + i * phsize)
        if kind == 1:
            if not (0x80000000 <= paddr and paddr + memsize <= 0x88000000):
                raise SystemExit("all loaded segments must reside in ROM")
            segments.append((paddr, blob[offset:offset+size] + bytes(memsize-size), vaddr))
    image = bytearray(max(a + len(b) for a, b, _ in segments) - 0x80000000)
    for addr, data, _ in segments:
        start = addr - 0x80000000
        image[start:start+len(data)] = data
    # Source changes move the end of native code. Read the compiler's symbols
    # rather than splitting the new image at the previous artifact's offsets.
    shoff = struct.unpack_from("<Q", blob, 40)[0]
    shsize, shcount = struct.unpack_from("<HH", blob, 58)
    sections = [struct.unpack_from("<IIQQQQIIQQ", blob, shoff + i * shsize)
                for i in range(shcount)]
    symbols = {}
    for section in sections:
        if section[1] != 2:  # SHT_SYMTAB
            continue
        strings = sections[section[6]]
        names = blob[strings[4]:strings[4] + strings[5]]
        for offset in range(section[4], section[4] + section[5], section[9]):
            name, _, _, _, value, _ = struct.unpack_from("<IBBHQQ", blob, offset)
            end = names.index(0, name)
            symbols[names[name:end].decode()] = value
    native_start = symbols["cake_main"] - 0x80000000
    native_end = symbols["cake_codebuffer_begin"] - 0x80000000
    parts = {"Bytes": image[native_start:native_end],
             "Prefix": image[:native_start], "Suffix": image[native_end:]}
    imports = ["import InitECandidate.Bitmaps"]
    names = {}
    args.output_dir.mkdir(parents=True, exist_ok=True)
    for family, data in parts.items():
        names[family] = []
        for index, offset in enumerate(range(0, len(data), 4096)):
            module = f"{family}{index:03}"
            name = module[0].lower() + module[1:]
            literal_file(args.output_dir / (module+".lean"), name, data[offset:offset+4096])
            imports.append("import InitECandidate."+module)
            names[family].append(name)
    data = next(data for addr, data, vaddr in segments if vaddr == 0xa0020000)
    bitmaps = list(struct.unpack("<"+"Q"*((len(data)-24)//8), data[24:]))
    literal_file(args.output_dir / "Bitmaps.lean", "bitmaps", bitmaps, 64)
    body = "\n".join(imports)+"\n\nnamespace InitECandidate\n\n"
    for family, name in [("Bytes", "nativeCode"), ("Prefix", "bootPrefix"), ("Suffix", "suffix")]:
        body += f"def {name} : List (BitVec 8) := ["+", ".join(names[family])+"].flatten\n\n"
    body += "def code : List (BitVec 8) := bootPrefix ++ nativeCode ++ suffix\n\nend InitECandidate\n"
    (args.output_dir / "Program.lean").write_text(body)
    print(f"ROM image: {len(image)} bytes; native artifact: {len(parts['Bytes'])} bytes; bitmaps: {len(bitmaps)} words")


if __name__ == "__main__":
    main()
