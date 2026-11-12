import InitECandidate.Solver.MemSafe.Dn.Kit2
import InitECandidate.Solver.Wit.Prod
import InitECandidate.Solver.MemSafe.Dn.NdbLeaf

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# Facts that survive a summarised call (`CO`): record cells, the node DB, free heap blocks

* `rcell_co`, `ndbR_co`: a record cell (a `prot` cell of a record object of `Γ`) and the frozen node DB
  `NdbR` are unchanged by a call.
* `blk_co`, `blk_mem_co`: a heap block outside `Γ` and allocated (`BlkF`) stays so, and its
  cells are unchanged.
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH (BlkF)

variable {σ : Type}

theorem rcell_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {x : BitVec 64}
    (h : Hooks.RCell Γ x) : st.memory x = s.memory x := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  rw [haC] at hL
  exact co.frame x (by rw [haCb]; exact Wit.rcell_not_wcell hord hL h) (Wit.rcell_alloc hL h)

theorem ndbR_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {T : BitVec 64}
    (h : Hooks.NdbR Γ s.memory T) : Hooks.NdbR Γ' st.memory T :=
  Hooks.ndbR_ext co.ext
    (Hooks.ndb_frame h (fun x hx => rcell_co haC haCb co (Hooks.ndbFp_rcell h hx))).1

theorem blk_co {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r)
    {Ar : BitVec 64} {n : Nat} (h : BlkF Ar n Γ q) : BlkF Ar n Γ' q' :=
  MptH.blkF_after (heap_ord co.heap0) (heap_ord co.heap) co.mono co.nf h

theorem blk_mem_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {Ar : BitVec 64} {n : Nat}
    (h : BlkF Ar n Γ q) {x : BitVec 64} (hx : Overlap Ar.toNat n x) : st.memory x = s.memory x := by
  obtain ⟨hni, hal⟩ := h x hx
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  rw [haC] at hL
  refine co.frame x (fun ⟨o, ho, k, hk, _, hxk⟩ => hni ?_) hal
  exact hxk ▸ cell_in hord hL ho hk

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.ndbR_co
#print axioms InitECandidate.Solver.MemSafe.Dn.blk_mem_co
