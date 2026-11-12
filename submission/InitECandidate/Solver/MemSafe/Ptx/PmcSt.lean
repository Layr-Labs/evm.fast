import InitECandidate.Solver.MemSafe.Ptx.PmcD
import InitECandidate.Solver.MemSafe.D0.BlockSt
import InitECandidate.Solver.MemSafe.Aw.Rcpt
import InitECandidate.Solver.MemSafe.Aw.Merk

/-!
# F3: `process_message_call`, part C: the store rule into `out`, and `frame_state_gas_used`

* `hoare_stOut`: `st out + k, e` for a word value `e`: the memory gets one word.
* `fsgu_spec`: `frame_state_gas_used` is pure (memory, globals and `be` unchanged).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- `st out + k, e` for a word value: the memory gets one word. -/
theorem hoare_stOut {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {o : BitVec 64} {k : Nat} {e : ExpHOL 64}
    (hP : ∀ s : State σ, InCtx s guestCtx → P s → s.locals.lookup (nm "out") = some (.val (.word o)))
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ v, ev s e = some v → ∃ x, v = .val (.word x) ∧
      (s.memaddrs (o + BitVec.ofNat 64 k) →
        Q none { s with memory := upd s.memory (o + BitVec.ofNat 64 k) x })) :
    Hoare σ guestCtx P (.store (.op .add [lv (nm "out"), cw k]) e) Q := by
  refine hoare_store fun s hs hp w v mem hw hv hmem => ?_
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz; cases hz
  have hy' : y = o := by
    have := hP s hs hp
    have h2 : ev s (lv (nm "out")) = some (.val (.word o)) := this
    rw [h2] at hy; exact (HolWordLab.word.inj (ValueHOL.val.inj (Option.some.inj hy))).symm
  subst hy'
  obtain ⟨x, rfl, hq⟩ := h s hs hp v hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  exact hq hd

theorem footRet_fsgu :
    Helpers.FootRet σ guestCtx (nm "frame_state_gas_used") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  Aw.footRet_pure_fn Aw.pureSpecs_nil guestCtx_code
    (d := Guest.Software.guestFn_frame_state_gas_used)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 451) (by decide)) ⟨_, rfl⟩ (by cbv) (by cbv)

/-- `frame_state_gas_used` changes no memory, no global and not `be`. -/
theorem fsgu_spec : FunSpec σ guestCtx (nm "frame_state_gas_used") (fun _ s r t =>
    Good (some r) → t.memory = s.memory ∧ t.globals = s.globals ∧ t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr hg
  obtain ⟨hgl, hmod, -⟩ := footRet_fsgu vs body callee rs hl s hs hloc r hr hg trivial
  refine ⟨funext fun a => ?_, hgl, Inv.be_preserved s body⟩
  exact hmod a (fun h => h)

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.hoare_stOut
#print axioms InitECandidate.Solver.MemSafe.Ptx.fsgu_spec
