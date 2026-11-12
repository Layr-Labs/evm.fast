import InitECandidate.Solver.MemSafe.Bal.Ub5

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

def ubNames4 : List MlS := nm "s2" :: ubNames3

/-- The environment of the transaction-storage loop. -/
def EL2 (E : Env) (OW IW : BitVec 64) : Env :=
  (E.set (nm "outer") (.val (.word OW))).set (nm "i") (.val (.word IW))

def FL2 (OW : BitVec 64) (Γ : Gam) : Prop := ∃ S ∈ Γ, S.base = OW ∧ S.ty = tHTt20

theorem fl2_mono (OW : BitVec 64) : MonoF (FL2 OW) := by
  intro Γ Γ1 hx ⟨S, hS, hb, ht⟩
  obtain ⟨S', hS', h1, h2, -⟩ := hx S hS
  exact ⟨S', hS', h1.trans hb, h2.trans ht⟩

theorem el2_le {E : Env} (hE : E (nm "s2") = none) (OW IW IW' : BitVec 64) (v : ValueHOL 64) :
    EnvLe (EL2 E OW IW') (((EL2 E OW IW).set (nm "s2") v).set (nm "i") (.val (.word IW'))) := by
  intro x w h
  by_cases hi : x = nm "i"
  · subst hi; simpa [EL2, Env.set] using h
  · by_cases hs : x = nm "s2"
    · subst hs; simp (config := {decide := true}) [EL2, Env.set, hE] at h
    · simpa [EL2, Env.set, hi, hs] using h

section ub6
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem ub_l2_body (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} (hfr : ∀ x ∈ ubNames4, E x = none)
    {IDX : BitVec 64} (hidx : E (nm "idx") = some (.val (.word IDX))) (OW IW : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (EL2 E OW IW) (FL2 OW)) ubL2Body
      (RR ubc Γ0 s0 p0 (LE (EL2 E OW (IW + BitVec.ofNat 64 1)) (FL2 OW))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hfs : E (nm "s2") = none := hfr _ (by simp [ubNames4])
  unfold ubL2Body
  refine gitemE hH (rn := nm "s2") (tabv := nm "outer") (iv := nm "i") (th0 := tHTt20) (TW := OW) (IW := IW)
    (by decide) (by decide) Ent.hord Ent.hL (fl2_mono OW) ?_ ?_ ?_ (fun Γ h => h) ?_
  · simp (config := {decide := true}) [EL2, Env.set, hfs]
  · simp (config := {decide := true}) [EL2, Env.set]
  · simp (config := {decide := true}) [EL2, Env.set]
  intro v
  refine hseqR2 (L := LE ((EL2 E OW IW).set (nm "s2") v) (fun Γ => FL2 OW Γ ∧ ItemG tHTt20 v Γ)) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨Γ, hIV, hl⟩, _⟩ => Or.inl ⟨rfl, Γ, hIV, hl⟩)
    intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a2, b2, c2, hv, hItem⟩ := hFF.2
    subst hv
    have hsE : ((EL2 E OW IW).set (nm "s2") (wv [a2, b2, c2])) (nm "s2") = some (wv [a2, b2, c2]) :=
      env_set_self _ _ _
    have ha : a2 ≠ 0 := rf0_ne (hLL _ _ hsE) (condTrue_iff.mpr hc)
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
    have T := ub_then2 Ent hgs hF' (E := (EL2 E OW IW).set (nm "s2") (wv [a2, b2, c2])) ?_ (a2 := a2) (b2 := b2)
      (c2 := c2) (IDX := IDX) hsE ?_ (fun Γ h => h.2)
    · have := T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, ⟨k1, k2⟩, hfit⟩⟩ hg
      exact rr_mono (fun Γ t h => le_mono (envLe_refl _) (fun Γ' h' => h'.1) h) this
    · intro x hx
      simp only [ubNames3, List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
        simp (config := {decide := true}) [EL2, Env.set] <;> exact hfr _ (by simp [ubNames4, ubNames3])
    · simp (config := {decide := true}) [EL2, Env.set, hidx]
  · refine hoareG_conseq (hassignT hH (n := nm "i") (fun v' => v' = .val (.word (IW + BitVec.ofNat 64 1))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v', hv', hl⟩ => ?_) hq)
    · intro Γ s' v' hP hv
      have hiE : ((EL2 E OW IW).set (nm "s2") v) (nm "i") = some (.val (.word IW)) := by
        rw [env_set_ne _ _ (by decide)]; simp (config := {decide := true}) [EL2, Env.set]
      have e : ev s' (.op .add [lvv "i", cw 1]) = some (.val (.word (IW + BitVec.ofNat 64 1))) :=
        ev_add2 (le_ev hP.2 hiE) (ev_cw _ 1)
      rw [e] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact le_mono (el2_le hfs OW IW _ v) (fun Γ h => h.1) hl

theorem ub_loop2 (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} (hfr : ∀ x ∈ ubNames4, E x = none)
    {IDX : BitVec 64} (hidx : E (nm "idx") = some (.val (.word IDX))) (OW : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (EL2 E OW (BitVec.ofNat 64 0)) (FL2 OW)) ubLoop2
      (RR ubc Γ0 s0 p0 (fun Γ t => ∃ IW, LE (EL2 E OW IW) (FL2 OW) Γ t)) := by
  unfold ubLoop2
  refine hoareG_pre (gwhile (cs := ubc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
    (L := fun Γ t => ∃ IW, LE (EL2 E OW IW) (FL2 OW) Γ t) (by decide) (fun Γ s h => h) ?_) ?_
  · intro s hs ⟨⟨Γ, hIV, IW, hl⟩, hc⟩ hg
    have := ub_l2_body Ent hgs hfr hidx OW IW s hs ⟨Γ, hIV, hl⟩ hg
    exact rr_mono (fun Γ t h => ⟨_, h⟩) this
  · intro s _ ⟨Γ, hIV, hl⟩
    exact ⟨Γ, hIV, _, hl⟩

end ub6

end InitECandidate.Solver.MemSafe.Bal
