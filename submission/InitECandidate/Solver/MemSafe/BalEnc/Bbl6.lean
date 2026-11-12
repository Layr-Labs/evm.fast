import InitECandidate.Solver.MemSafe.BalEnc.Bbl5

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`, phase 1: the two mutator loops
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Bal

variable {σ : Type}

/-- The environment of the first loop: `sr`, `i`. -/
def EB1 (SR IW : BitVec 64) : Env :=
  (E0.set (nm "sr") (.val (.word SR))).set (nm "i") (.val (.word IW))

def FB1 (SR : BitVec 64) (Γ : Gam) : Prop := ∃ S ∈ Γ, S.base = SR ∧ S.ty = tHTb52

theorem fb1_mono (SR : BitVec 64) : MonoF (FB1 SR) := by
  intro Γ Γ1 hx ⟨S, hS, hb, ht⟩
  obtain ⟨S', hS', h1, h2, -⟩ := hx S hS
  exact ⟨S', hS', h1.trans hb, h2.trans ht⟩

theorem eb1_le (SR IW IW' : BitVec 64) (v : ValueHOL 64) :
    EnvLe (EB1 SR IW') (((EB1 SR IW).set (nm "s") v).set (nm "i") (.val (.word IW'))) := by
  intro x w h
  by_cases hi : x = nm "i"
  · subst hi; simpa [EB1, Env.set] using h
  · by_cases hs : x = nm "s"
    · subst hs; simp (config := {decide := true}) [EB1, E0, Env.set] at h
    · simpa [EB1, Env.set, hi, hs] using h

set_option maxHeartbeats 8000000 in
theorem bb_l1_body {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (Ent : BbEnt Γ0 s0 p0) (SR IW : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (EB1 SR IW) (FB1 SR)) loopSRBody
      (RR bbc Γ0 s0 p0 (LE (EB1 SR (IW + BitVec.ofNat 64 1)) (FB1 SR))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold loopSRBody
  refine gitemE hH (rn := cS) (tabv := cSr) (iv := cI) (th0 := tHTb52) (TW := SR) (IW := IW)
    (by decide) (by decide) Ent.hord Ent.hL (fb1_mono SR) ?_ ?_ ?_ (fun Γ h => h) ?_
  · simp (config := {decide := true}) [EB1, E0, Env.set, cS, cSr, cI]
  · simp (config := {decide := true}) [EB1, E0, Env.set, cS, cSr, cI]
  · simp (config := {decide := true}) [EB1, E0, Env.set, cS, cSr, cI]
  intro v
  refine hseqR2 (L := LE ((EB1 SR IW).set cS v) (fun Γ => FB1 SR Γ ∧ ItemG tHTb52 v Γ)) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨Γ, hIV, hl⟩, _⟩ => Or.inl ⟨rfl, Γ, hIV, hl⟩)
    intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a, b, c, hv, hItem⟩ := hFF.2
    subst hv
    have hsE : ((EB1 SR IW).set cS (wv [a, b, c])) cS = some (wv [a, b, c]) := env_set_self _ _ _
    have ha : a ≠ 0 := rf0_ne (hLL _ _ hsE) (condTrue_iff.mpr hc)
    have hI := hItem ha
    have k1 := hI.2 20 tHTd20 (by decide) (by decide)
    have k2 := srcKey_shift (hI.2 52 tHTh32 (by decide) (by decide)) (off := 20) (n := 32) (by decide)
      (by decide)
    have hF' : MonoF (fun Γ => (FB1 SR Γ ∧ ItemG tHTb52 (wv [a, b, c]) Γ) ∧
        SrcKey Γ b 20 tHTd20 ∧ SrcKey Γ (b + BitVec.ofNat 64 20) 32 tHTh32) :=
      fun Γ Γ1 hx ⟨h1, h2, h3⟩ => ⟨⟨fb1_mono SR Γ Γ1 hx h1.1, itemG_mono _ _ Γ Γ1 hx h1.2⟩,
        srcKey_ext hx h2, srcKey_ext hx h3⟩
    have T := gstepE hH sumSpec_add_storage_read (by decide_cbv) (fun g _ => by simp [Bal.srSig])
      Ent.hord Ent.hL hF' (cs := bbc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
      (args := [.rfield 1 (lv cS), .op .add [.rfield 1 (lv cS), cw 20]])
      (E := (EB1 SR IW).set cS (wv [a, b, c])) ?_
    · have := T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, k1, k2⟩⟩ hg
      exact rr_mono (fun Γ t h => le_mono (envLe_refl _) (fun Γ' h' => h'.1) h) this
    · intro Γ1 s1 hP vs hvs callee
      obtain rfl := evs_det hvs (evs_cons_mk (le_rf (i := 1) (ws := [a, b, c]) hP.2 hsE (by simp))
        (evs_cons_mk (ev_add2 (le_rf (i := 1) (ws := [a, b, c]) hP.2 hsE (by simp)) (ev_cw _ 20)) evs_nil))
      exact hdata_any (sg := Bal.srSig) (Pre := SrPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [Bal.srSig]) rfl hP.1
        ⟨b, b + BitVec.ofNat 64 20, rfl, (bb_facts Ent hP.1).balNN, hP.2.2.2.1, hP.2.2.2.2⟩
        (fun y hpc hy => cpwB_bal hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_conseq (hassignT hH (n := cI) (fun v' => v' = .val (.word (IW + BitVec.ofNat 64 1))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v', hv', hl⟩ => ?_) hq)
    · intro Γ s' v' hP hv
      have hiE : ((EB1 SR IW).set cS v) cI = some (.val (.word IW)) := by
        rw [env_set_ne _ _ (by decide)]; simp (config := {decide := true}) [EB1, E0, Env.set, cS, cI]
      have e : ev s' (.op .add [lv cI, cw 1]) = some (.val (.word (IW + BitVec.ofNat 64 1))) :=
        ev_add2 (le_ev hP.2 hiE) (ev_cw _ 1)
      rw [e] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact le_mono (eb1_le SR IW (IW + BitVec.ofNat 64 1) v) (fun Γ h => h.1) hl


/-- The environment of the second loop: `ar`, `i`. -/
def EB2 (AR IW : BitVec 64) : Env :=
  (E0.set (nm "ar") (.val (.word AR))).set (nm "i") (.val (.word IW))

def FB2 (AR : BitVec 64) (Γ : Gam) : Prop := ∃ S ∈ Γ, S.base = AR ∧ S.ty = tHTb20

theorem fb2_mono (AR : BitVec 64) : MonoF (FB2 AR) := by
  intro Γ Γ1 hx ⟨S, hS, hb, ht⟩
  obtain ⟨S', hS', h1, h2, -⟩ := hx S hS
  exact ⟨S', hS', h1.trans hb, h2.trans ht⟩

theorem eb2_le (AR IW IW' : BitVec 64) (v : ValueHOL 64) :
    EnvLe (EB2 AR IW') (((EB2 AR IW).set (nm "s2") v).set (nm "i") (.val (.word IW'))) := by
  intro x w h
  by_cases hi : x = nm "i"
  · subst hi; simpa [EB2, Env.set] using h
  · by_cases hs : x = nm "s2"
    · subst hs; simp (config := {decide := true}) [EB2, E0, Env.set] at h
    · simpa [EB2, Env.set, hi, hs] using h

theorem capsHT_bbc : ∀ c ∈ capsHT tHTd20, c ∈ bbc := fun c hc => by
  simp [bbc, balCaps, hc]

set_option maxHeartbeats 8000000 in
theorem bb_l2_body {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (Ent : BbEnt Γ0 s0 p0) (AR IW : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (EB2 AR IW) (FB2 AR)) loopARBody
      (RR bbc Γ0 s0 p0 (LE (EB2 AR (IW + BitVec.ofNat 64 1)) (FB2 AR))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold loopARBody
  refine gitemE hH (rn := cS2) (tabv := cAr) (iv := cI) (th0 := tHTb20) (TW := AR) (IW := IW)
    (by decide) (by decide) Ent.hord Ent.hL (fb2_mono AR) ?_ ?_ ?_ (fun Γ h => h) ?_
  · simp (config := {decide := true}) [EB2, E0, Env.set, cS2, cAr, cI]
  · simp (config := {decide := true}) [EB2, E0, Env.set, cS2, cAr, cI]
  · simp (config := {decide := true}) [EB2, E0, Env.set, cS2, cAr, cI]
  intro v
  refine hseqR2 (L := LE ((EB2 AR IW).set cS2 v) (fun Γ => FB2 AR Γ ∧ ItemG tHTb20 v Γ)) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨Γ, hIV, hl⟩, _⟩ => Or.inl ⟨rfl, Γ, hIV, hl⟩)
    intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a, b, c, hv, hItem⟩ := hFF.2
    subst hv
    have hsE : ((EB2 AR IW).set cS2 (wv [a, b, c])) cS2 = some (wv [a, b, c]) := env_set_self _ _ _
    have ha : a ≠ 0 := rf0_ne (hLL _ _ hsE) (condTrue_iff.mpr hc)
    have hI := hItem ha
    have k1 := hI.2 20 tHTd20 (by decide) (by decide)
    have hF' : MonoF (fun Γ => (FB2 AR Γ ∧ ItemG tHTb20 (wv [a, b, c]) Γ) ∧ SrcKey Γ b 20 tHTd20) :=
      fun Γ Γ1 hx ⟨h1, h2⟩ => ⟨⟨fb2_mono AR Γ Γ1 hx h1.1, itemG_mono _ _ Γ Γ1 hx h1.2⟩, srcKey_ext hx h2⟩
    have T := gstepE hH sumSpec_add_touched_account (by decide_cbv) (fun g _ => by simp [atSig])
      Ent.hord Ent.hL hF' (cs := bbc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
      (args := [.rfield 1 (lv cS2)])
      (E := (EB2 AR IW).set cS2 (wv [a, b, c])) ?_
    · have := T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, k1⟩⟩ hg
      exact rr_mono (fun Γ t h => le_mono (envLe_refl _) (fun Γ' h' => h'.1) h) this
    · intro Γ1 s1 hP vs hvs callee
      obtain rfl := evs_det hvs (evs_cons_mk (le_rf (i := 1) (ws := [a, b, c]) hP.2 hsE (by simp)) evs_nil)
      exact hdata_any (sg := atSig) (Pre := AtPre) (PW' := fun _ s Γ a => CapPW (capsHT tHTd20) s Γ a)
        (by simp [atSig]) rfl hP.1 ⟨b, rfl, (bb_facts Ent hP.1).balNN, hP.2.2.2⟩
        (fun y hpc hy => cpwB_sub capsHT_bbc hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_conseq (hassignT hH (n := cI) (fun v' => v' = .val (.word (IW + BitVec.ofNat 64 1))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v', hv', hl⟩ => ?_) hq)
    · intro Γ s' v' hP hv
      have hiE : ((EB2 AR IW).set cS2 v) cI = some (.val (.word IW)) := by
        rw [env_set_ne _ _ (by decide)]; simp (config := {decide := true}) [EB2, E0, Env.set, cS2, cI]
      have e : ev s' (.op .add [lv cI, cw 1]) = some (.val (.word (IW + BitVec.ofNat 64 1))) :=
        ev_add2 (le_ev hP.2 hiE) (ev_cw _ 1)
      rw [e] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact le_mono (eb2_le AR IW (IW + BitVec.ofNat 64 1) v) (fun Γ h => h.1) hl

/-- The first loop. -/
theorem bb_loop1 {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (Ent : BbEnt Γ0 s0 p0) (SR : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (EB1 SR (BitVec.ofNat 64 0)) (FB1 SR)) loopSR
      (RR bbc Γ0 s0 p0 (fun Γ t => ∃ IW, LE (EB1 SR IW) (FB1 SR) Γ t)) := by
  unfold loopSR
  refine hoareG_pre (gwhile (cs := bbc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
    (L := fun Γ t => ∃ IW, LE (EB1 SR IW) (FB1 SR) Γ t) (by decide) (fun Γ s h => h) ?_) ?_
  · intro s hs ⟨⟨Γ, hIV, IW, hl⟩, hc⟩ hg
    have := bb_l1_body Ent SR IW s hs ⟨Γ, hIV, hl⟩ hg
    exact rr_mono (fun Γ t h => ⟨_, h⟩) this
  · intro s _ ⟨Γ, hIV, hl⟩
    exact ⟨Γ, hIV, _, hl⟩

/-- The second loop. -/
theorem bb_loop2 {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (Ent : BbEnt Γ0 s0 p0) (AR : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (EB2 AR (BitVec.ofNat 64 0)) (FB2 AR)) loopAR
      (RR bbc Γ0 s0 p0 (fun Γ t => ∃ IW, LE (EB2 AR IW) (FB2 AR) Γ t)) := by
  unfold loopAR
  refine hoareG_pre (gwhile (cs := bbc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
    (L := fun Γ t => ∃ IW, LE (EB2 AR IW) (FB2 AR) Γ t) (by decide) (fun Γ s h => h) ?_) ?_
  · intro s hs ⟨⟨Γ, hIV, IW, hl⟩, hc⟩ hg
    have := bb_l2_body Ent AR IW s hs ⟨Γ, hIV, hl⟩ hg
    exact rr_mono (fun Γ t h => ⟨_, h⟩) this
  · intro s _ ⟨Γ, hIV, hl⟩
    exact ⟨Γ, hIV, _, hl⟩

end InitECandidate.Solver.MemSafe.BalEnc
