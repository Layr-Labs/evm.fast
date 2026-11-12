import InitECandidate.Solver.MemSafe.Bal.Ub7

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

section ub8
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem ub_rest (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (IDX : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (Eb IDX) (fun _ => True)) ubRest
      (RR ubc Γ0 s0 p0 (LE E0 (fun _ => True))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubRest
  refine hdecEF hH (G := fun v Γ => ∃ O : BitVec 64, v = .val (.word O) ∧ FL2 O Γ) rfl ?_ ?_
  · intro Γ s' v hP hv
    obtain ⟨A, hA, S, hS, hSb, hSt⟩ := ts_slot Ent hP.1 (k := 4) (j := 32) (th := tHTt20) rfl (by decide)
      (by decide) hv
    exact ⟨A, hA, S, hS, hSb, hSt⟩
  · intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
    obtain ⟨O, rfl, hO⟩ := hFF.2
    exact ub_rest_body Ent hgs O s hs ⟨Γ, hIV, hLL, hO⟩ hg

theorem ub_aw (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (IDX A : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "aw") (.val (.word A))) (FL A))
      (.dec (nm "cap") .one (ld1 (add2 (lvv "aw") 24))
        (.dec (nm "i") .one (cw 0) (.seq ubLoop1 ubRest)))
      (RR ubc Γ0 s0 p0 (LE E0 (fun _ => True))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hdecE hH (G := fun v => ∃ w : BitVec 64, v = .val (.word w)) rfl ?_ ?_
  · intro Γ s' v hP hv
    exact ev_load1w (by unfold ld1 at hv; exact hv)
  rintro v ⟨CW, rfl⟩
  refine hdecE hH (G := fun v => v = .val (.word (BitVec.ofNat 64 0))) rfl ?_ ?_
  · intro Γ s' v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  refine hseqR2 (L := fun Γ t => ∃ IW, LE (EL IDX A CW IW) (FL A) Γ t) (ub_loop1 Ent IDX A CW) ?_
  refine hoareG_pre (ub_rest Ent hgs IDX) (fun s _ ⟨Γ, hIV, IW, hl⟩ => ⟨Γ, hIV, ?_⟩)
  refine le_mono ?_ (fun _ _ => trivial) hl
  intro x w h
  by_cases hx : x = nm "idx"
  · subst hx
    simp (config := {decide := true}) [Eb, E0, Env.set] at h
    subst h
    simp (config := {decide := true}) [EL, E0, Env.set]
  · simp (config := {decide := true}) [Eb, E0, Env.set, hx] at h

theorem ub_main (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E0 (fun _ => True)) ubBody (RR ubc Γ0 s0 p0 (LE E0 (fun _ => True))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubBody
  refine hdecE hH (G := fun v => ∃ w : BitVec 64, v = .val (.word w)) rfl ?_ ?_
  · intro Γ s' v hP hv
    exact ev_gscalar (Struct.trk_G hP.1.1) (by decide) hv
  rintro v ⟨IDX, rfl⟩
  refine hdecEF hH (G := fun v Γ => ∃ A : BitVec 64, v = .val (.word A) ∧ FL A Γ) rfl ?_ ?_
  · intro Γ s' v hP hv
    obtain ⟨A, hA, S, hS, hSb, hSt⟩ := ts_slot Ent hP.1 (k := 2) (j := 16) (th := tHTh20) rfl (by decide)
      (by decide) hv
    exact ⟨A, hA, S, hS, hSb, hSt⟩
  · intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
    obtain ⟨A, rfl, hA⟩ := hFF.2
    exact ub_aw Ent hgs IDX A s hs ⟨Γ, hIV, hLL, hA⟩ hg

theorem ub_hoare (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) :
    HoareG σ guestCtx (fun u => u = s0) ubBody (GQ4 ubc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hoareG_conseq (ub_main Ent hgs) (fun s _ hu => ?_) (fun r t _ _ h => rr_to_gq h)
  subst hu
  exact ⟨Γ0, ⟨Struct.trk_refl hG0 hp0, fun g _ => rfl⟩, fun x w h => absurd h (by simp [E0]), trivial⟩

def UbPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  vs = [] ∧ GF (nm "bs") tBS Γ s ∧ GF (nm "ts") tTS Γ s ∧ GF (nm "bal_accounts") tHTd20 Γ s ∧
    GF (nm "bal_key_buf") tB64 Γ s ∧ GF (nm "bal_idx_accts") tHTh28 Γ s ∧ GF (nm "bal_idx_stor") tHTh60 Γ s ∧
    GF (nm "sk_buf") tB64 Γ s

/-- **`update_builder_from_tx()`**: with `bs`, `ts`, `bal_accounts`, `bal_key_buf`, `bal_idx_accts`, `bal_idx_stor`
and `sk_buf` non-null objects of their types, and `ws_get_storage` summarised (`hgs`). May end in the witness
exceptions. Writes only table cells of `ubc` or list cells. -/
theorem sumSpec_update_builder_from_tx (hgs : HGS σ) :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "update_builder_from_tx") biSig UbPre
      (fun _ s Γ a => UbPW s Γ a) B4Post := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero code_update_builder_from_tx hl'
  obtain ⟨-, hbs, hts, hba, hkb, hia, his, hsk⟩ := hpre
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have Ent : UbEnt Γ0 s0 p0 := ⟨hord0, hL0, hbs, hts, hba, hkb, hia, his, hsk⟩
  have H' := ub_hoare Ent hgs hG0 hp0 s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at H'
  obtain ⟨hbl, Γ', hT'⟩ := H' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := biSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ UbPW s0 Γ0 a)
    (vs := []) (r := r) (trk_cpw_la hT') hp0 (fun h => by simp [biSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [biSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at hr; exact hbl⟩

end ub8

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_update_builder_from_tx
