import InitECandidate.Solver.MemSafe.Ptx.PmcTail1

/-!
# F3: `process_message_call`, part H: the refund (`var rc = frame[EV_REFUND]; if rc < 0 { rc = 0 }; st out + 8, rc`)
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

section tail2
variable {Γ0 Γ : Gam} {s0 t1 : State σ} {out child : BitVec 64}

theorem hoare_stL (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {Fct Fct' : Wmap → Prop}
    {Rl : Locs → Prop} {j : Nat} (hj8 : j % 8 = 0) (hj : j < 96) {e : ExpHOL 64}
    (hv : ∀ (u : State σ) (W : Wmap) v, TP Γ0 s0 Γ t1 out child W u → Fct W → Rl u.locals →
      ev u e = some v → ∃ x, v = .val (.word x) ∧ Fct' (upW W j x)) :
    Hoare σ guestCtx (fun u => PT Γ0 s0 Γ t1 out child Fct u ∧ Rl u.locals)
      (.store (.op .add [lv (nm "out"), cw j]) e)
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child Fct' u ∧ Rl u.locals) := by
  refine hoare_stOut (o := out) (k := j) (fun s _ ⟨⟨W, hT, _⟩, _⟩ => hT.2.1) ?_
  intro s hs ⟨⟨W, hT, hF⟩, hR⟩ v hev
  obtain ⟨x, rfl, hF'⟩ := hv s W v hT hF hR hev
  exact ⟨x, rfl, fun _ => ⟨rfl, ⟨upW W j x, ⟨tb_store hG0 hj8 hj x hT.1, hT.2⟩, hF'⟩, hR⟩⟩

theorem pt_set {Fct : Wmap → Prop} {n : MlS} (hn1 : n ≠ nm "out") (hn2 : n ≠ nm "frame")
    (v : ValueHOL 64) {u : State σ} (h : PT Γ0 s0 Γ t1 out child Fct u) :
    PT Γ0 s0 Γ t1 out child Fct (setVarHOLFinite n v u) := by
  obtain ⟨W, hT, hF⟩ := h
  refine ⟨W, ⟨tb_congr rfl rfl rfl rfl hT.1, ?_, ?_⟩, hF⟩
  · rw [lk_set_ne u v hn1]; exact hT.2.1
  · rw [lk_set_ne u v hn2]; exact hT.2.2

theorem pt_res {Fct : Wmap → Prop} {n : MlS} (hn1 : n ≠ nm "out") (hn2 : n ≠ nm "frame")
    (old : Option (ValueHOL 64)) {u : State σ} (h : PT Γ0 s0 Γ t1 out child Fct u) :
    PT Γ0 s0 Γ t1 out child Fct { u with locals := u.locals.resVarEq (n, old) } := by
  obtain ⟨W, hT, hF⟩ := h
  refine ⟨W, ⟨tb_congr rfl rfl rfl rfl hT.1, ?_, ?_⟩, hF⟩
  · show (u.locals.resVarEq (n, old)).lookup (nm "out") = _
    rw [lookup_resVarEq_ne _ _ hn1]; exact hT.2.1
  · show (u.locals.resVarEq (n, old)).lookup (nm "frame") = _
    rw [lookup_resVarEq_ne _ _ hn2]; exact hT.2.2

/-- The refund part of the tail. -/
theorem hoare_rc (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {Fct : Wmap → Prop}
    (hFinv : ∀ W x, Fct W → Fct (upW W 8 x)) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child Fct)
      (.dec (nm "rc") .one (ldW (nm "frame") 96)
        (.seq (.ite (.cmp .less (lv (nm "rc")) (cw 0)) (.assign VarKind.local (nm "rc") (cw 0)) .skip)
          (.store (.op .add [lv (nm "out"), cw 8]) (lv (nm "rc")))))
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child Fct u) := by
  have hn1 : nm "rc" ≠ nm "out" := by decide
  have hn2 : nm "rc" ≠ nm "frame" := by decide
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
  have hI : Hoare σ guestCtx
      (fun t => PT Γ0 s0 Γ t1 out child Fct t ∧
        ∃ w', t.locals.lookup (nm "rc") = some (.val (.word w')))
      (.seq (.ite (.cmp .less (lv (nm "rc")) (cw 0)) (.assign VarKind.local (nm "rc") (cw 0)) .skip)
        (.store (.op .add [lv (nm "out"), cw 8]) (lv (nm "rc"))))
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child Fct u ∧
        ∃ w', u.locals.lookup (nm "rc") = some (.val (.word w'))) := by
    refine hoare_seqP (Rn := fun t => PT Γ0 s0 Γ t1 out child Fct t ∧
        ∃ w', t.locals.lookup (nm "rc") = some (.val (.word w'))) ?_
      (hoare_stL hG0 (Rl := fun l => ∃ w', l.lookup (nm "rc") = some (.val (.word w'))) (by decide)
        (by decide) ?_)
    · refine hoare_ite (hoare_assign ?_) (hoare_skip ?_)
      · intro t _ ⟨⟨hP', _⟩, _⟩ v' hv' _
        rw [ev_cw] at hv'; cases hv'
        exact ⟨rfl, pt_set hn1 hn2 _ hP', _, lk_set_self _ _ _⟩
      · intro t _ ⟨hP', _⟩
        exact ⟨rfl, hP'⟩
    · intro u W v' hT hF ⟨w', hw'⟩ hev
      have : u.locals.lookup (nm "rc") = some v' := hev
      rw [hw'] at this; cases this
      exact ⟨w', rfl, hFinv W _ hF⟩
  refine hoare_conseq hI (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨pt_set hn1 hn2 _ hP, _, lk_set_self _ _ _⟩
  · exact ⟨hq.1, pt_res hn1 hn2 _ hq.2.1⟩

end tail2

end InitECandidate.Solver.MemSafe.Ptx
