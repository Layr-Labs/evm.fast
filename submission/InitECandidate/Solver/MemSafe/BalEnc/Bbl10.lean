import InitECandidate.Solver.MemSafe.BalEnc.Bbl9

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`: the whole body
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
open InitECandidate.Solver.MemSafe.Aw (Below G_heapOnly AwInv AwE awInv_init)

variable {σ : Type}

section glue
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem hseqBB {P L : Gam → State σ → Prop} {a b : ProgHOL 64}
    (ha : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a (RR bbc Γ0 s0 p0 L)) (hna : NoRet a = true)
    (hb : HoareG σ guestCtx (fun s => ∃ Γ, PI bbc Γ0 s0 p0 L Γ s) b (BblPost s0 Γ0 p0)) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.seq a b) (BblPost s0 Γ0 p0) :=
  hseqQ ha (hoareG_pre (noret_sound a hna) (fun _ _ _ => trivial))
    (fun r t h v hv => absurd hv (h v)) hb

/-- The environment with `ar`. -/
def E3 (SR AR : BitVec 64) : Env := (E0.set cSr (.val (.word SR))).set cAr (.val (.word AR))

set_option maxHeartbeats 8000000 in
/-- From the assignment to `cap`: the second loop and the tail. -/
theorem bb_rest (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR AR : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (E3 SR AR) (fun Γ => FB1 SR Γ ∧ FB2 AR Γ))
      (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
        (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2)))
      (BblPost s0 Γ0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hseqBB (L := LE (E3 SR AR) (fun Γ => FB1 SR Γ ∧ FB2 AR Γ)) (hassignU hH (by
    simp (config := {decide := true}) [E3, E0, Env.set, cCap, cSr, cAr])) rfl ?_
  refine hseqBB (hassignT hH (n := cI) (fun v' => v' = .val (.word (BitVec.ofNat 64 0))) ?_) rfl ?_
  · intro Γ s' v' hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  refine hseqBB (L := fun Γ t => ∃ IW, LE (EB2 AR IW) (FB2 AR) Γ t) ?_ rfl (hoareG_tail hp0 Ent hev hcc)
  refine hoareG_pre (bb_loop2 Ent AR) (fun s _ ⟨Γ, hIV, v', hv', hl⟩ => ⟨Γ, hIV, ?_⟩)
  subst hv'
  refine le_mono ?_ (fun Γ h => h.2) hl
  intro x w h
  by_cases hi : x = cI
  · subst hi
    simp (config := {decide := true}) [EB2, E0, Env.set, cI, cAr] at h
    simp (config := {decide := true}) [E3, E0, Env.set, cI, cAr, cSr, h]
  · by_cases ha : x = cAr
    · subst ha
      simp (config := {decide := true}) [EB2, E0, Env.set, cI, cAr] at h
      simp (config := {decide := true}) [E3, E0, Env.set, cI, cAr, cSr, h]
    · have hi' : ¬ x = nm "i" := hi
      have ha' : ¬ x = nm "ar" := ha
      simp (config := {decide := true}) [EB2, E0, Env.set, cI, cAr, hi', ha'] at h

set_option maxHeartbeats 8000000 in
theorem bb_after_loop1 (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (E0.set cSr (.val (.word SR))) (FB1 SR))
      (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
        (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
          (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2))))
      (BblPost s0 Γ0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hQ := bblPost_locals (s0 := s0) (Γ0 := Γ0) (p0 := p0) hH
  refine hdecQF hQ (G := fun v Γ => ∃ AR, v = .val (.word AR) ∧ FB2 AR Γ) ?_ hH ?_
  · intro Γ s v hP hv
    obtain ⟨A, rfl, S, hS, hSb, hSt⟩ := bs_slot Ent hP.1 (k := 1) (j := 8) (th := tHTb20) rfl (by decide)
      (by decide) hv
    exact ⟨A, rfl, S, hS, hSb, hSt⟩
  intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
  obtain ⟨AR, rfl, hAR⟩ := hFF.2
  exact bb_rest hp0 Ent hev hcc SR AR s hs ⟨Γ, hIV, hLL, hFF.1, hAR⟩ hg

theorem bb_seq1 (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (EB1 SR (BitVec.ofNat 64 0)) (FB1 SR))
      (.seq loopSR
        (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
          (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
            (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2)))))
      (BblPost s0 Γ0 p0) := by
  refine hseqBB (L := fun Γ t => ∃ IW, LE (EB1 SR IW) (FB1 SR) Γ t) (bb_loop1 Ent SR) rfl ?_
  refine hoareG_pre (bb_after_loop1 hp0 Ent hev hcc SR) (fun s _ ⟨Γ, hIV, IW, hl⟩ => ⟨Γ, hIV, ?_⟩)
  refine le_mono ?_ (fun Γ h => h) hl
  intro x w h
  by_cases hs : x = cSr
  · subst hs
    simp (config := {decide := true}) [E0, Env.set, cSr, cI] at h
    simp (config := {decide := true}) [EB1, E0, Env.set, cSr, cI, h]
  · have hs' : ¬ x = nm "sr" := hs
    simp (config := {decide := true}) [E0, Env.set, cSr, cI, hs'] at h

set_option maxHeartbeats 8000000 in
theorem bb_after_sr (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR : BitVec 64) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 (E0.set cSr (.val (.word SR))) (FB1 SR))
      (.dec cCap .one (.load .one (.op .add [lv cSr, cw 24]))
        (.dec cI .one (cw 0)
          (.seq loopSR
            (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
              (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
                (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2)))))))
      (BblPost s0 Γ0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hQ := bblPost_locals (s0 := s0) (Γ0 := Γ0) (p0 := p0) hH
  refine hdecUQ hQ (by simp (config := {decide := true}) [E0, Env.set, cCap, cSr]) hH ?_
  refine hdecQF hQ (G := fun v _ => v = .val (.word (BitVec.ofNat 64 0))) ?_ hH ?_
  · intro Γ s v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
  obtain ⟨hF, rfl⟩ := hFF
  exact bb_seq1 hp0 Ent hev hcc SR s hs ⟨Γ, hIV, hLL, hF⟩ hg

end glue

section top
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

set_option maxHeartbeats 8000000 in
theorem hoareG_bblMain (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) :
    HoareG σ guestCtx (PE bbc Γ0 s0 p0 E0 (fun _ => True)) bblBody (BblPost s0 Γ0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hQ := bblPost_locals (s0 := s0) (Γ0 := Γ0) (p0 := p0) hH
  unfold bblBody phase1
  refine hdecQF hQ (G := fun v Γ => ∃ SR, v = .val (.word SR) ∧ FB1 SR Γ) ?_ hH ?_
  · intro Γ s v hP hv
    obtain ⟨A, rfl, S, hS, hSb, hSt⟩ := bs_slot Ent hP.1 (k := 3) (j := 24) (th := tHTb52) rfl (by decide)
      (by decide) hv
    exact ⟨A, rfl, S, hS, hSb, hSt⟩
  intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
  obtain ⟨SR, rfl, hSR⟩ := hFF.2
  exact bb_after_sr hp0 Ent hev hcc SR s hs ⟨Γ, hIV, hLL, hSR⟩ hg

end top

/-- **The precondition of `build_block_access_list_rlp`**: `bs` and `bal_accounts` are non-null objects of
their types, and `ev` and `cur_cont` are null (no live frame: the scratch objects of the typing are dropped). -/
def BblPre (s : State σ) (Γ : Gam) : Prop :=
  Bal.BsNN s Γ ∧ Bal.BalNN s Γ ∧ (∃ e, gword s nmEv = some e ∧ e.toNat < nullMax) ∧
    (∃ c, gword s nmCC = some c ∧ c.toNat < nullMax)

/-- **`build_block_access_list_rlp()` is memory-safe** (the summary `execute_block` uses).

From `G Γ s` and `BblPre s Γ`, a returned call ends with `G Γ' t`, `KeepH guestC Γ Γ' s t` (the heap
objects of `Γ` survive), the allocator state moved up (`p.Mono p'`), and an `h1 ∈ [p.hp, p'.hp]`
(8-aligned: the heap pointer after the BAL tables were completed) such that every written cell is
`≥ h1`, a `BalPW` cell, a `WCell` or unallocated at entry. The BAL globals (`bal4`) and the protected
globals are unchanged. The result is `<S, L>` with `h1 ≤ S`, `S + L ≤ B0 = 2^40 + 128`, `1 ≤ L`. -/
theorem funSpec_build_block_access_list_rlp :
    FunSpec σ guestCtx (nm "build_block_access_list_rlp") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (Γ : Gam) (p : Ptrs), G guestC (guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → vs = [] →
        BblPre s Γ → BblPost s Γ p (some r) t) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ p hG hp hvs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero code_build_block_access_list_rlp hl'
  obtain ⟨hbs, hba, hev, hcc⟩ := hpre
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG
  rw [hp] at hq0
  cases hq0
  have Ent : BbEnt Γ s0 p := by
    obtain ⟨B, hB, hBt, hBg⟩ := hbs
    obtain ⟨T, hT, hTt, hTg⟩ := hba
    exact ⟨hord0, hL0, ⟨B.base, hBg, B, hB, rfl, hBt⟩, ⟨T.base, hTg, T, hT, rfl, hTt⟩⟩
  have H' : HoareG σ guestCtx (fun u => u = s0) bblBody (BblPost s0 Γ p) := by
    refine hoareG_conseq (hoareG_bblMain hp Ent hev hcc) (fun s _ hu => ?_) (fun r t _ _ h => h)
    subst hu
    exact ⟨Γ, ⟨Struct.trk_refl hG hp, fun g _ => rfl⟩, fun x w h => absurd h (by simp [E0]), trivial⟩
  have H'' := H' s0 hs rfl (by rw [hr, hv]; simp [Good])
  rw [hr] at H''
  have := H'' v (by rw [hv])
  rw [hv]
  intro v' hv'
  cases hv'
  exact this

end InitECandidate.Solver.MemSafe.BalEnc

#print axioms InitECandidate.Solver.MemSafe.BalEnc.funSpec_build_block_access_list_rlp
