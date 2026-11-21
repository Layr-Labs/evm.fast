import InitECandidate.Solver.Band6.UbC3

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# The cost walk: slot loop body, slot loop, transaction-storage entry (Band6)

Mirrors `Ub5.lean`.
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

def bL2I : Nat := 1 + 0 + (max bInner 0 + 0)

section c5
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem c_l2_inner_body (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfe : E (nm "e") = none) {a2 b2 c2 : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) {CIN : BitVec 64}
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ ∃ S ∈ Γ, S.base = CIN ∧ S.ty = tHTh32)
    (JW : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EJ E CIN JW) F) ubL2Inner bL2I := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubL2Inner
  refine citemE hH (rn := nm "e") (tabv := nm "inner") (iv := nm "j") (th0 := tHTh32) (TW := CIN) (IW := JW)
    (by decide) (by decide) Ent.hord Ent.hL hF ?_ ?_ (fun Γ h => (hk Γ h).2) ?_
  · simp (config := {decide := true}) [EJ, Env.set]
  · simp (config := {decide := true}) [EJ, Env.set]
  intro v
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_ite ?_ ?_) (fun s _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_assign _ _ _))
  · intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a3, b3, c3, hv, hItem⟩ := hFF.2
    subst hv
    have heE : ((EJ E CIN JW).set (nm "e") (wv [a3, b3, c3])) (nm "e") = some (wv [a3, b3, c3]) :=
      env_set_self _ _ _
    have ha : a3 ≠ 0 := rf0_ne (hLL _ _ heE) hc
    have hI := hItem ha
    have k3 := hI.2 32 tHTl32 (by decide) (by decide)
    have T := c_inner hGT Ent (E := (EJ E CIN JW).set (nm "e") (wv [a3, b3, c3]))
      (F := fun Γ => (F Γ ∧ ItemG tHTh32 (wv [a3, b3, c3]) Γ) ∧ SrcKey Γ b3 32 tHTl32)
      (a2 := a2) (b2 := b2) (c2 := c2) (a3 := a3) (b3 := b3) (c3 := c3) ?_ heE
      (fun Γ' h => (hk Γ' h.1.1).1.1)
    · have := T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, k3⟩⟩ hg
      exact this
    · simp (config := {decide := true}) [EJ, Env.set, hs2]
  · intro s' hs' _ hg
    have := Inv.costP_of_cost (P := fun _ => True) (X := guestCtx) (σ := σ) cost_skip s' hs' trivial hg
    exact this

def bIL : Nat := (2 ^ 64 + 1) * (bL2I + 1)

/-- The slot loop. -/
theorem c_inner_loop (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX CIN : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ ∃ S ∈ Γ, S.base = CIN ∧ S.ty = tHTh32) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EJ E CIN (BitVec.ofNat 64 0)) F)
      (.while (.cmp .less (lvv "j") (lvv "icap")) ubL2Inner) bIL := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hfe : E (nm "e") = none := hfr _ (by simp [ubNames3])
  refine Inv.CostP.pre (costP_while_inc_less (I := fun s => ∃ JW, PE ubc Γ0 s0 p0 (EJ E CIN JW) F s)
    (i := nm "j") (E := lvv "icap") (body := ubL2Inner)
    (fun s ⟨JW, h⟩ => ⟨JW, pe_clk hH h⟩)
    (fun s hs ⟨⟨JW, hpe⟩, hc⟩ hg => c_l2_inner_body hGT Ent hF hfe hs2 hk JW s hs hpe hg) ?_
    (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "j") true _ (by decide_cbv))) (fun s _ h => ⟨_, h⟩)
  intro s hs ⟨⟨JW, hpe⟩, hc⟩ ht hr
  exact ⟨_, inv_of_hoareG (ub_l2_inner_body Ent hgs hF hfr hs2 hidx hk JW) s hs hpe ht hr⟩

/-- The slot loop for a found account. -/
theorem c_then2 (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ Fits Γ (.ptr tHTh32) c2) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 E F) ubThen2 bIL := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubThen2
  refine cdecE hH (G := fun v => v = .val (.word c2)) ?_ ?_
  · intro Γ s' v hP hv
    have h1 : ev s' (.rfield 2 (lvv "s2")) = some (.val (.word c2)) :=
      ev_rfield_wv (ws := [a2, b2, c2]) (le_ev' hP.2 hs2) (i := 2) (by simp)
    rw [h1] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  refine cdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames3])) ?_
  refine cdecE hH (G := fun v => v = .val (.word (BitVec.ofNat 64 0))) ?_ ?_
  · intro Γ s' v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  exact c_inner_loop hGT Ent hgs hF (E := E) hfr hs2 hidx (CIN := c2) (fun Γ h => ⟨(hk Γ h).1, (hk Γ h).2⟩)

end c5

section c6
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def bL2B : Nat := 1 + 0 + (max bIL 0 + 0)

theorem c_l2_body (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} (hfr : ∀ x ∈ ubNames4, E x = none)
    {IDX : BitVec 64} (hidx : E (nm "idx") = some (.val (.word IDX))) (OW IW : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EL2 E OW IW) (FL2 OW)) ubL2Body bL2B := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hfs : E (nm "s2") = none := hfr _ (by simp [ubNames4])
  unfold ubL2Body
  refine citemE hH (rn := nm "s2") (tabv := nm "outer") (iv := nm "i") (th0 := tHTt20) (TW := OW) (IW := IW)
    (by decide) (by decide) Ent.hord Ent.hL (fl2_mono OW) ?_ ?_ (fun Γ h => h) ?_
  · simp (config := {decide := true}) [EL2, Env.set]
  · simp (config := {decide := true}) [EL2, Env.set]
  intro v
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_ite ?_ ?_) (fun s _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_assign _ _ _))
  · intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a2, b2, c2, hv, hItem⟩ := hFF.2
    subst hv
    have hsE : ((EL2 E OW IW).set (nm "s2") (wv [a2, b2, c2])) (nm "s2") = some (wv [a2, b2, c2]) :=
      env_set_self _ _ _
    have ha : a2 ≠ 0 := rf0_ne (hLL _ _ hsE) hc
    have hI := hItem ha
    have k1 := hI.2 20 tHTb20 (by decide) (by decide)
    have k2 := hI.2 20 tHTd20 (by decide) (by decide)
    have hfit : Fits Γ (.ptr tHTh32) c2 := by
      have hv : valK tHTt20 = .ptr tHTh32 := by decide
      have := hI.1
      rw [hv] at this
      exact this
    have hF' : MonoF (fun Γ => (FL2 OW Γ ∧ ItemG tHTt20 (wv [a2, b2, c2]) Γ) ∧
        (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ Fits Γ (.ptr tHTh32) c2) :=
      fun Γ Γ1 hx ⟨h1, h2, h3⟩ => ⟨⟨fl2_mono OW Γ Γ1 hx h1.1, itemG_mono _ _ Γ Γ1 hx h1.2⟩,
        ⟨srcKey_ext hx h2.1, srcKey_ext hx h2.2⟩, fits_ext hx h3⟩
    have T := c_then2 hGT Ent hgs hF' (E := (EL2 E OW IW).set (nm "s2") (wv [a2, b2, c2])) ?_ (a2 := a2)
      (b2 := b2) (c2 := c2) (IDX := IDX) hsE ?_ (fun Γ h => h.2)
    · exact T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, ⟨k1, k2⟩, hfit⟩⟩ hg
    · intro x hx
      simp only [ubNames3, List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
        simp (config := {decide := true}) [EL2, Env.set] <;> exact hfr _ (by simp [ubNames4, ubNames3])
    · simp (config := {decide := true}) [EL2, Env.set, hidx]
  · intro s' hs' _ hg
    exact Inv.costP_of_cost (P := fun _ => True) (X := guestCtx) (σ := σ) cost_skip s' hs' trivial hg

def bL2 : Nat := (2 ^ 64 + 1) * (bL2B + 1)

theorem c_loop2 (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} (hfr : ∀ x ∈ ubNames4, E x = none)
    {IDX : BitVec 64} (hidx : E (nm "idx") = some (.val (.word IDX))) (OW : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EL2 E OW (BitVec.ofNat 64 0)) (FL2 OW)) ubLoop2 bL2 := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubLoop2
  refine Inv.CostP.pre (costP_while_inc_less (I := fun s => ∃ IW, PE ubc Γ0 s0 p0 (EL2 E OW IW) (FL2 OW) s)
    (i := nm "i") (E := lvv "cap") (body := ubL2Body)
    (fun s ⟨IW, h⟩ => ⟨IW, pe_clk hH h⟩)
    (fun s hs ⟨⟨IW, hpe⟩, hc⟩ hg => c_l2_body hGT Ent hgs hfr hidx OW IW s hs hpe hg) ?_
    (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv))) (fun s _ h => ⟨_, h⟩)
  intro s hs ⟨⟨IW, hpe⟩, hc⟩ ht hr
  exact ⟨_, inv_of_hoareG (ub_l2_body Ent hgs hfr hidx OW IW) s hs hpe ht hr⟩

end c6

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.c_l2_inner_body
