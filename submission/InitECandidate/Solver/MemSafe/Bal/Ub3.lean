import InitECandidate.Solver.MemSafe.Bal.Ub2

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

variable {σ : Type}

def E0 : Env := fun _ => none

/-- The environment of the account loop. -/
def EL (IDX AW CW IW : BitVec 64) : Env :=
  (((E0.set (nm "idx") (.val (.word IDX))).set (nm "aw") (.val (.word AW))).set (nm "cap")
    (.val (.word CW))).set (nm "i") (.val (.word IW))

def FL (AW : BitVec 64) (Γ : Gam) : Prop := ∃ S ∈ Γ, S.base = AW ∧ S.ty = tHTh20

theorem fl_mono (AW : BitVec 64) : MonoF (FL AW) := by
  intro Γ Γ1 hx ⟨S, hS, hb, ht⟩
  obtain ⟨S', hS', h1, h2, -⟩ := hx S hS
  exact ⟨S', hS', h1.trans hb, h2.trans ht⟩

theorem el_le (IDX AW CW IW IW' : BitVec 64) (v : ValueHOL 64) :
    EnvLe (EL IDX AW CW IW') (((EL IDX AW CW IW).set (nm "s") v).set (nm "i") (.val (.word IW'))) := by
  intro x w h
  by_cases hi : x = nm "i"
  · subst hi; simpa [EL, Env.set] using h
  · by_cases hs : x = nm "s"
    · subst hs; simp (config := {decide := true}) [EL, E0, Env.set] at h
    · simpa [EL, Env.set, hi, hs] using h

theorem rr_to_gq {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {L : Gam → State σ → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : RR cs Γ0 s0 p0 L r t) : GQ4 cs Γ0 s0 p0 r t := by
  rcases h with ⟨hr, -⟩ | ⟨-, hq⟩
  · subst hr; intro rr h; cases h
  · exact hq

section ub3
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem ub_l1_body (Ent : UbEnt Γ0 s0 p0) (IDX AW CW IW : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (EL IDX AW CW IW) (FL AW)) ubL1Body
      (RR ubc Γ0 s0 p0 (LE (EL IDX AW CW (IW + BitVec.ofNat 64 1)) (FL AW))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubL1Body
  refine gitemE hH (rn := nm "s") (tabv := nm "aw") (iv := nm "i") (th0 := tHTh20) (TW := AW) (IW := IW)
    (by decide) (by decide) Ent.hord Ent.hL (fl_mono AW) ?_ ?_ ?_ (fun Γ h => h) ?_
  · simp (config := {decide := true}) [EL, E0, Env.set]
  · simp (config := {decide := true}) [EL, E0, Env.set]
  · simp (config := {decide := true}) [EL, E0, Env.set]
  intro v
  refine hseqR2 (L := LE ((EL IDX AW CW IW).set (nm "s") v) (fun Γ => FL AW Γ ∧ ItemG tHTh20 v Γ)) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨Γ, hIV, hl⟩, _⟩ => Or.inl ⟨rfl, Γ, hIV, hl⟩)
    intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a, b, c, hv, hItem⟩ := hFF.2
    subst hv
    have hsE : ((EL IDX AW CW IW).set (nm "s") (wv [a, b, c])) (nm "s") = some (wv [a, b, c]) := env_set_self _ _ _
    have ha : a ≠ 0 := rf0_ne (hLL _ _ hsE) (condTrue_iff.mpr hc)
    have hI := hItem ha
    have k1 := hI.2 20 tHTd20 (by decide) (by decide)
    have k2 := hI.2 20 tHTb20 (by decide) (by decide)
    have hF' : MonoF (fun Γ => (FL AW Γ ∧ ItemG tHTh20 (wv [a, b, c]) Γ) ∧
        SrcKey Γ b 20 tHTd20 ∧ SrcKey Γ b 20 tHTb20) :=
      fun Γ Γ1 hx ⟨h1, h2, h3⟩ => ⟨⟨fl_mono AW Γ Γ1 hx h1.1, itemG_mono _ _ Γ Γ1 hx h1.2⟩,
        srcKey_ext hx h2, srcKey_ext hx h3⟩
    have T := ub_then Ent hF' (E := (EL IDX AW CW IW).set (nm "s") (wv [a, b, c])) ?_ (a := a) (b := b) (c := c)
      (IDX := IDX) hsE ?_ (fun Γ h => h.2)
    · have := T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, k1, k2⟩⟩ hg
      exact rr_mono (fun Γ t h => le_mono (envLe_refl _) (fun Γ' h' => h'.1) h) this
    · intro x hx
      simp only [ubNames, List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
        simp (config := {decide := true}) [EL, E0, Env.set]
    · simp (config := {decide := true}) [EL, E0, Env.set]
  · refine hoareG_conseq (hassignT hH (n := nm "i") (fun v' => v' = .val (.word (IW + BitVec.ofNat 64 1))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v', hv', hl⟩ => ?_) hq)
    · intro Γ s' v' hP hv
      have hiE : ((EL IDX AW CW IW).set (nm "s") v) (nm "i") = some (.val (.word IW)) := by
        rw [env_set_ne _ _ (by decide)]; simp (config := {decide := true}) [EL, E0, Env.set]
      have e : ev s' (.op .add [lvv "i", cw 1]) = some (.val (.word (IW + BitVec.ofNat 64 1))) :=
        ev_add2 (le_ev hP.2 hiE) (ev_cw _ 1)
      rw [e] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact le_mono (el_le IDX AW CW IW _ v) (fun Γ h => h.1) hl

end ub3

end InitECandidate.Solver.MemSafe.Bal
