import InitECandidate.Solver.MemSafe.Eb.Ld
import InitECandidate.Solver.MemSafe.Eb.Code

/-!
# `execute_block`: the head, part 1 (`pl`, `ntx`, `bo = alloc(88)`, `memzero(bo, 88)`)

Each theorem takes the walk of the rest as a hypothesis (`hnext`), over the facts the step leaves.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section head1
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var pl = lds si; var ntx = lds (pl + 40); …`. -/
theorem head_pl_ntx (hQ : LocIns QT) {si0 pl0 ntx0 : BitVec 64}
    (hsi : En (nm "si") = some (.val (.word si0))) (hpl : S (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0))
    (hnt : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0))
    (hnext : Hoare σ guestCtx (PA E ((En.set (nm "pl") (.val (.word pl0))).set (nm "ntx") (.val (.word ntx0))) S) ebS2 QT) :
    Hoare σ guestCtx (PA E En S) ebBody QT := by
  unfold ebBody ebS1
  refine hdecT (locIns_resIns hQ _) (w := pl0) (fun s hs v hv => evI_ld_pcv hs (evI_lvoff hs hsi 0) hpl v hv) ?_
  refine hdecT (locIns_resIns hQ _) (w := ntx0) (fun s hs v hv =>
    evI_ld_pcv hs (evI_lvoff hs (env_set_self _ _ _) 40) hnt v hv) ?_
  exact hnext

end head1

end InitECandidate.Solver.MemSafe.Eb
