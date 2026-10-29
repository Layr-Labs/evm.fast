#!/usr/bin/env python3
"""Reuse successful same-position backend label certificates; retain other proofs.
Run after regenerating target certificates. Eligibility only selects a proof:
Lean still checks the original theorem statement and the small label agreement.
"""
import argparse, re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
BASE=ROOT/'submission/InitECandidate/Proofs/BackendStages/TargetChecks'

def original_source(n):
    s=(BASE/f'CorrectLabels1_{n}.lean').read_text()
    original_import=f'import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_{n}\n'
    s=s[s.index(original_import):]
    return s[:s.index(':= by')]+':= by\n  with_unfolding_all rfl\n'+f'#print axioms localLabels1_{n}_eq\nend InitECandidate.Proofs.BackendStages.TargetChecks.Correct\n'

def reused_source(n,s=None):
    if s is None:s=original_source(n)
    pos=re.search(r'sectionLabels (\d+)',s).group(1)
    enc=(BASE/f'CorrectEncode0_{n}.lean').read_text()
    end=re.search(r'lines, (\d+), true\)',enc).group(1)
    imports=f"import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_{n}\nimport InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_{n}\nimport InitECandidate.Proofs.BackendStages.TargetChecks.LabelReuse\nimport InitECandidate.Proofs.CompactComputation\n"
    s=imports+s
    body=f"  exact (InitECandidate.Proofs.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain\n    Target.labels0 Target.ffis {pos} {end} riscvConfig.encode\n    Initial{n}.lines Reencode0_{n}.lines [] Reencode0_{n}_eq).trans\n    (localLabels0_{n}_eq.trans (by kernel_rfl))"
    return s.replace('  with_unfolding_all rfl',body)

def eligible(n):
    a=(BASE/f'CorrectLabels0_{n}.lean').read_text()
    b=(BASE/f'CorrectLabels1_{n}.lean').read_text()
    e=(BASE/f'CorrectEncode0_{n}.lean').read_text()
    return re.search(r'sectionLabels (\d+)',a).group(1)==re.search(r'sectionLabels (\d+)',b).group(1) and e.split(':= by')[0].rstrip().endswith('true)')

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--check',action='store_true',help='fail if eligible proofs need regeneration')
    args=ap.parse_args();changed=[];count=0
    for path in sorted(BASE.glob('CorrectLabels1_*.lean')):
        n=int(path.stem.split('_')[1])
        if not eligible(n):continue
        count+=1
        text=reused_source(n)
        if text!=path.read_text():
            changed.append(n)
            if not args.check:path.write_text(text)
    print(f'{count} eligible label certificates; {len(changed)} '+('need regeneration' if args.check else 'updated'))
    if args.check and changed:raise SystemExit(1)

if __name__=='__main__':main()
