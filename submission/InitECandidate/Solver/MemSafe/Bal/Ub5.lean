import InitECandidate.Solver.MemSafe.Bal.Ub4

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

/-- The environment of the slot loop. -/
def EJ (E : Env) (CIN JW : BitVec 64) : Env :=
  (E.set (nm "inner") (.val (.word CIN))).set (nm "j") (.val (.word JW))

theorem ej_le {E : Env} (hE : E (nm "e") = none) (CIN JW JW' : BitVec 64) (v : ValueHOL 64) :
    EnvLe (EJ E CIN JW') (((EJ E CIN JW).set (nm "e") v).set (nm "j") (.val (.word JW'))) := by
  intro x w h
  by_cases hj : x = nm "j"
  · subst hj; simpa [EJ, Env.set] using h
  · by_cases he : x = nm "e"
    · subst he; simp (config := {decide := true}) [EJ, Env.set, hE] at h
    · simpa [EJ, Env.set, hj, he] using h

section ub5
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem ub_l2_inner_body (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX CIN : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ ∃ S ∈ Γ, S.base = CIN ∧ S.ty = tHTh32)
    (JW : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (EJ E CIN JW) F) ubL2Inner
      (RR ubc Γ0 s0 p0 (LE (EJ E CIN (JW + BitVec.ofNat 64 1)) F)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hfe : E (nm "e") = none := hfr _ (by simp [ubNames3])
  unfold ubL2Inner
  refine gitemE hH (rn := nm "e") (tabv := nm "inner") (iv := nm "j") (th0 := tHTh32) (TW := CIN) (IW := JW)
    (by decide) (by decide) Ent.hord Ent.hL hF ?_ ?_ ?_ (fun Γ h => (hk Γ h).2) ?_
  · simp (config := {decide := true}) [EJ, Env.set, hfe]
  · simp (config := {decide := true}) [EJ, Env.set]
  · simp (config := {decide := true}) [EJ, Env.set]
  intro v
  refine hseqR2 (L := LE ((EJ E CIN JW).set (nm "e") v) (fun Γ => F Γ ∧ ItemG tHTh32 v Γ)) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨Γ, hIV, hl⟩, _⟩ => Or.inl ⟨rfl, Γ, hIV, hl⟩)
    intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a3, b3, c3, hv, hItem⟩ := hFF.2
    subst hv
    have heE : ((EJ E CIN JW).set (nm "e") (wv [a3, b3, c3])) (nm "e") = some (wv [a3, b3, c3]) := env_set_self _ _ _
    have ha : a3 ≠ 0 := rf0_ne (hLL _ _ heE) (condTrue_iff.mpr hc)
    have hI := hItem ha
    have k3 := hI.2 32 tHTl32 (by decide) (by decide)
    have hF' : MonoF (fun Γ => (F Γ ∧ ItemG tHTh32 (wv [a3, b3, c3]) Γ) ∧ SrcKey Γ b3 32 tHTl32) :=
      fun Γ Γ1 hx ⟨h1, h2⟩ => ⟨⟨hF Γ Γ1 hx h1.1, itemG_mono _ _ Γ Γ1 hx h1.2⟩, srcKey_ext hx h2⟩
    have T := ub_inner Ent hgs hF' (E := (EJ E CIN JW).set (nm "e") (wv [a3, b3, c3])) ?_ (a2 := a2) (b2 := b2)
      (c2 := c2) (a3 := a3) (b3 := b3) (c3 := c3) (IDX := IDX) ?_ heE ?_ ?_
    · have := T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, k3⟩⟩ hg
      exact rr_mono (fun Γ t h => le_mono (envLe_refl _) (fun Γ' h' => h'.1) h) this
    · intro x hx
      simp only [ubNames2, List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl <;> simp (config := {decide := true}) [EJ, Env.set] <;>
        exact hfr _ (by simp [ubNames3])
    · simp (config := {decide := true}) [EJ, Env.set, hs2]
    · simp (config := {decide := true}) [EJ, Env.set, hidx]
    · intro Γ' h
      exact ⟨(hk Γ' h.1.1).1.1, (hk Γ' h.1.1).1.2, h.2⟩
  · refine hoareG_conseq (hassignT hH (n := nm "j") (fun v' => v' = .val (.word (JW + BitVec.ofNat 64 1))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v', hv', hl⟩ => ?_) hq)
    · intro Γ s' v' hP hv
      have hjE : ((EJ E CIN JW).set (nm "e") v) (nm "j") = some (.val (.word JW)) := by
        rw [env_set_ne _ _ (by decide)]; simp (config := {decide := true}) [EJ, Env.set]
      have e : ev s' (.op .add [lvv "j", cw 1]) = some (.val (.word (JW + BitVec.ofNat 64 1))) :=
        ev_add2 (le_ev hP.2 hjE) (ev_cw _ 1)
      rw [e] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact le_mono (ej_le hfe CIN JW _ v) (fun Γ h => h.1) hl

theorem ub_inner_loop (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX CIN : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ ∃ S ∈ Γ, S.base = CIN ∧ S.ty = tHTh32) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (EJ E CIN (BitVec.ofNat 64 0)) F)
      (.while (.cmp .less (lvv "j") (lvv "icap")) ubL2Inner)
      (RR ubc Γ0 s0 p0 (fun Γ t => ∃ JW, LE (EJ E CIN JW) F Γ t)) := by
  refine hoareG_pre (gwhile (cs := ubc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
    (L := fun Γ t => ∃ JW, LE (EJ E CIN JW) F Γ t) (by decide) (fun Γ s h => h) ?_) ?_
  · intro s hs ⟨⟨Γ, hIV, JW, hl⟩, hc⟩ hg
    have := ub_l2_inner_body Ent hgs hF hfr hs2 hidx hk JW s hs ⟨Γ, hIV, hl⟩ hg
    exact rr_mono (fun Γ t h => ⟨_, h⟩) this
  · intro s _ ⟨Γ, hIV, hl⟩
    exact ⟨Γ, hIV, _, hl⟩

/-- The slot loop for a found account. -/
theorem ub_then2 (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ Fits Γ (.ptr tHTh32) c2) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) ubThen2 (RR ubc Γ0 s0 p0 (LE E F)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubThen2
  refine hdecE hH (G := fun v => v = .val (.word c2)) (hfr _ (by simp [ubNames3])) ?_ ?_
  · intro Γ s' v hP hv
    have h1 : ev s' (.rfield 2 (lvv "s2")) = some (.val (.word c2)) :=
      ev_rfield_wv (ws := [a2, b2, c2]) (le_ev' hP.2 hs2) (i := 2) (by simp)
    rw [h1] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  refine hdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames3]))
    (hfr _ (by simp [ubNames3])) ?_
  refine hdecE hH (G := fun v => v = .val (.word (BitVec.ofNat 64 0))) (hfr _ (by simp [ubNames3])) ?_ ?_
  · intro Γ s' v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  refine hoareG_conseq (ub_inner_loop Ent hgs hF (E := E) hfr hs2 hidx (CIN := c2) (fun Γ h => ⟨(hk Γ h).1, (hk Γ h).2⟩))
    (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨JW, hl⟩ => ?_) hq)
  exact le_mono (envLe_set (envLe_set (envLe_refl E) (hfr (nm "inner") (by simp [ubNames3])) _)
    (hfr (nm "j") (by simp [ubNames3])) _) (fun _ h => h) hl

end ub5

end InitECandidate.Solver.MemSafe.Bal
