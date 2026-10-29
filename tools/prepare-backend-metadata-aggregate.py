#!/usr/bin/env python3
"""Compose section metadata certificates in the backend's small partitions."""
from pathlib import Path
import csv
root=Path(__file__).resolve().parents[1]
rows=[tuple(map(int,r)) for r in csv.reader((root/'work/lean-perf/backend-metadata/positions.csv').open())]
lookup={r[0]:r for r in rows}
ids=[r[0] for r in rows]
groups=[ids[:6]]+[ids[i:i+16] for i in range(6,len(ids),16)]
common="set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\nopen InitECandidate.Proofs.BackendStages\nnamespace InitECandidate.Proofs.BackendStages.Metadata\n"
base=root/'submission/InitECandidate/Proofs/BackendStages/Metadata'
symbol_pos=0
for group in groups:
    tag='Stubs' if group==ids[:6] else str(group[0])+'_'+str(group[-1])
    first,last=group[0],group[-1]
    filtered='['+', '.join('Filtered'+str(n) for n in group)+']'
    padded='['+', '.join('Padded'+str(n) for n in group)+']'
    imports=''.join(f'import InitECandidate.Proofs.BackendStages.Metadata.Ffi{n}\nimport InitECandidate.Proofs.BackendStages.Metadata.Shmem{n}\n' for n in group)
    lines=[imports+common]
    lines.append(f'theorem ffiChunk{tag} (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis{last}) : LabToTarget.findFfiNames ({filtered} ++ rest) = suffixFfis{first} := by')
    lines.append('  exact '+' '.join(f'ffiStep{n} _ (' for n in group)+'h'+')'*len(group))
    lines.append(f'theorem shmemChunk{tag} (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ({padded} ++ rest) {lookup[first][1]} beforeFfis{first} beforeShmem{first} = LabToTarget.getShmemInfo rest {lookup[last][2]} afterFfis{last} afterShmem{last} := by')
    lines.append('  simp only [List.cons_append, List.nil_append]')
    for n in group:
        lines.append(f'  change LabToTarget.getShmemInfo _ {lookup[n][1]} beforeFfis{n} beforeShmem{n} = _')
        lines.append(f'  rw [shmemStep{n}]')
    start=symbol_pos;symbols=[]
    for n in group:
        length=lookup[n][3];symbols.append(f'({n}, {symbol_pos}, {length})');symbol_pos+=length
    syms='['+', '.join(symbols)+']'
    lines.append(f'theorem symbolsChunk{tag} (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols {start} ({padded} ++ rest) = {syms} ++ LabToTarget.getSymbols {symbol_pos} rest := by')
    lines.append('  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, '+', '.join('symbolLength'+str(n) for n in group)+']')
    lines.append('  rfl')
    lines.append(f'#print axioms ffiChunk{tag}\n#print axioms shmemChunk{tag}\n#print axioms symbolsChunk{tag}\nend InitECandidate.Proofs.BackendStages.Metadata\n')
    (base/f'Chunk{tag}.lean').write_text('\n'.join(lines))
print('Generated',len(groups),'metadata composition chunks; symbols end at',symbol_pos)

tags=['Stubs' if g==ids[:6] else str(g[0])+'_'+str(g[-1]) for g in groups]
def program(prefix):
    chunks=['['+', '.join(prefix+str(n) for n in g)+']' for g in groups]
    return ' ++ ('.join(chunks)+' ++ []'+')'*(len(chunks)-1)
imports=''.join(f'import InitECandidate.Proofs.BackendStages.Metadata.Chunk{t}\n' for t in tags)
imports+='import InitECandidate.Proofs.BackendStages.Metadata.FinalData\nimport InitECandidate.Proofs.BackendStages.TargetFfis\nimport InitECandidate.Proofs.CompilerConfigLiteral\n'
lines=[imports+common, f'def filteredProgram : LabSem.LabProgHOL 64 := {program("Filtered")}', f'def paddedProgram : LabSem.LabProgHOL 64 := {program("Padded")}']
lines += ['theorem ffiLiteral_eq : LabToTarget.findFfiNames filteredProgram = Target.ffis := by', '  unfold filteredProgram', '  exact '+' '.join(f'ffiChunk{t} _ (' for t in tags)+'(by simp only [LabToTarget.findFfiNames, nextFfis'+str(ids[-1])+'])'+')'*len(tags)]
lines += ['theorem shmemLiteral_eq : LabToTarget.getShmemInfo paddedProgram 0 [] [] = (shmemFfis, InitE.baselineLabConfig.shmemExtra) := by', '  unfold paddedProgram']
for group,tag in zip(groups,tags):
    n=group[0]
    lines += [f'  change LabToTarget.getShmemInfo _ {lookup[n][1]} beforeFfis{n} beforeShmem{n} = _',f'  rw [shmemChunk{tag}]']
lines += ['  simp only [LabToTarget.getShmemInfo]', '  with_unfolding_all rfl']
lines += ['theorem symbolsLiteral_eq : LabToTarget.getSymbols 0 paddedProgram = InitE.baselineLabConfig.secPosLen := by', '  unfold paddedProgram', '  rw ['+', '.join('symbolsChunk'+t for t in tags)+']', '  with_unfolding_all rfl']
lines += ['theorem ffiNames_eq : some (Target.ffis ++ shmemFfis) = InitE.baselineLabConfig.ffiNames := by', '  with_unfolding_all rfl', '#print axioms ffiLiteral_eq\n#print axioms shmemLiteral_eq\n#print axioms symbolsLiteral_eq\n#print axioms ffiNames_eq\nend InitECandidate.Proofs.BackendStages.Metadata\n']
(base/'LiteralFacts.lean').write_text('\n'.join(lines))
agreement='import InitECandidate.Proofs.BackendStages.Metadata.LiteralFacts\nimport InitECandidate.Proofs.BackendStages.Filtered\nimport InitECandidate.Proofs.BackendStages.Final\n'+common
agreement+='theorem ffi_eq : LabToTarget.findFfiNames Filtered.program = Target.ffis := by\n  exact ffiLiteral_eq\n'
agreement+='theorem shmem_eq : LabToTarget.getShmemInfo Final.padded0 0 [] [] = (shmemFfis, InitE.baselineLabConfig.shmemExtra) := by\n  exact shmemLiteral_eq\n'
agreement+='theorem symbols_eq : LabToTarget.getSymbols 0 Final.padded0 = InitE.baselineLabConfig.secPosLen := by\n  exact symbolsLiteral_eq\n'
agreement+='#print axioms ffi_eq\n#print axioms shmem_eq\n#print axioms symbols_eq\n'+ 'end InitECandidate.Proofs.BackendStages.Metadata\n'
(base/'Facts.lean').write_text(agreement)
