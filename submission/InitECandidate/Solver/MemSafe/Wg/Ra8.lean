import InitECandidate.Solver.MemSafe.Wg.Ra7

/-!
# Wg: the walk of `requests_append`, assembly
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section ra8
variable {E : EbE σ} {En : Env}

theorem ra_walk {bo0 n : BitVec 64} (hnl : n.toNat < 2 ^ 32) (hgw : gword E.s0 (nm "bo") = some bo0)
    (hEn : En (nm "n") = some (.val (.word n))) (hb : En (nm "blob") = none) (hk : En (nm "k") = none) :
    Hoare σ guestCtx (PA E En (RaS E.Γ0 E.s0 bo0)) raBody
      (RetR E (RaD E.s0) (fun m => rd m (bo0 + BitVec.ofNat 64 64) = rd E.s0.memory (bo0 + BitVec.ofNat 64 64) + BitVec.ofNat 64 1 ∧
        rd m (bo0 + BitVec.ofNat 64 56) = rd E.s0.memory (bo0 + BitVec.ofNat 64 56))) := by
  have hLI := retR_locIns E (RaD E.s0) (fun m => rd m (bo0 + BitVec.ofNat 64 64) = rd E.s0.memory (bo0 + BitVec.ofNat 64 64) + BitVec.ofNat 64 1 ∧
        rd m (bo0 + BitVec.ofNat 64 56) = rd E.s0.memory (bo0 + BitVec.ofNat 64 56))
  unfold raBody
  refine hdecAllocFresh (Z := [nm "bo"]) (locIns_resIns hLI _) (n := n + BitVec.ofNat 64 8)
    (fun s hs => evI_add (evI_lv_pa hs hEn) (evI_cw s 8)) ra_tidy (by decide) ?_
  intro w
  have hN8 := add8_toNat hnl
  have hEw : (En.set (nm "blob") (.val (.word w))) (nm "blob") = some (.val (.word w)) := env_set_self _ _ _
  have hEn' : (En.set (nm "blob") (.val (.word w))) (nm "n") = some (.val (.word n)) := by
    simp (config := { decide := true }) [Env.set, hEn]
  unfold raS1
  refine hseqN (P1 := PA E (En.set (nm "blob") (.val (.word w)))
    (fun f => RaS E.Γ0 E.s0 bo0 f ∨ f = Fct.fbuf w (n + BitVec.ofNat 64 8).toNat))
    (hn_stByteF (N := (n + BitVec.ofNat 64 8).toNat) (by omega) (fun s hs => evI_lv_pa hs hEw) (Or.inr rfl)) ?_
  unfold raS2
  have hTid := tidy_add (ra_tidy (Γ0 := E.Γ0) (s0 := E.s0) (bo0 := bo0)) (f0 := Fct.fbuf w (n + BitVec.ofNat 64 8).toNat)
    ⟨fun _ _ _ h => (by cases h), fun _ _ h => (by cases h)⟩
  refine hseqN (P1 := PA E (En.set (nm "blob") (.val (.word w)))
    (fun f => RaS E.Γ0 E.s0 bo0 f ∨ f = Fct.fbuf w (n + BitVec.ofNat 64 8).toNat))
    (ra_memcpy hnl hTid (by decide) hN8 (Or.inr rfl) hEw hEn') ?_
  unfold raS3
  refine hdecT (locIns_resIns hLI _) (w := rd E.s0.memory (bo0 + BitVec.ofNat 64 64)) (fun s hs v hv =>
    evI_ld_cellv hs (evI_add (evI_gobj hs (Or.inl (Or.inl (Or.inr (Or.inl rfl))) : (fun f => RaS E.Γ0 E.s0 bo0 f ∨
      f = Fct.fbuf w (n + BitVec.ofNat 64 8).toNat) (Fct.gobj (nm "bo") bo0 tBO))) (evI_cw s 64))
      (Or.inl (Or.inr rfl)) v hv) ?_
  -- drop the count cell fact
  set S3 : FS := fun f => RaS0 E.Γ0 E.s0 bo0 f ∨ f = Fct.fbuf w (n + BitVec.ofNat 64 8).toNat with hS3
  have hS3sub : ∀ f, S3 f → (fun f => RaS E.Γ0 E.s0 bo0 f ∨ f = Fct.fbuf w (n + BitVec.ofNat 64 8).toNat) f := by
    intro f hf; rcases hf with hf | hf
    · exact Or.inl (Or.inl hf)
    · exact Or.inr hf
  refine hoare_pre (P := PA E ((En.set (nm "blob") (.val (.word w))).set (nm "k") (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) S3) ?_
    (fun t _ ht => pa_mono ht (fun _ _ h => h) hS3sub)
  have hEk : ((En.set (nm "blob") (.val (.word w))).set (nm "k") (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) (nm "k") =
      some (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64)))) := env_set_self _ _ _
  have hEw3 : ((En.set (nm "blob") (.val (.word w))).set (nm "k") (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) (nm "blob") =
      some (.val (.word w)) := by
    simp (config := { decide := true }) [Env.set]
  have hEn3 : ((En.set (nm "blob") (.val (.word w))).set (nm "k") (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) (nm "n") =
      some (.val (.word n)) := by
    simp (config := { decide := true }) [Env.set, hEn]
  have hAv3 : Avoid S3 E.Γ0 E.s0 (RaD E.s0) [bo0 + BitVec.ofNat 64 56] := by
    intro f hf
    rcases hf with hf | rfl
    · exact ra_avoid0 f hf
    · exact Or.inr fun y hy => hy.elim
  have hS0_3 : ∀ f, RaS0 E.Γ0 E.s0 bo0 f → S3 f := fun f hf => Or.inl hf
  unfold raS4
  refine hseqN (ra_st1 hS0_3 hAv3 hgw hEw3 hEk) ?_
  unfold raS5
  refine hseqN (ra_st2 (S := fun f => S3 f ∨ f = Fct.cellv (rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
      rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16) w) (fun f hf => Or.inl (hS0_3 f hf)) ?_ hgw hEn3 hEk) ?_
  · refine avoid_add (L := [bo0 + BitVec.ofNat 64 56]) hAv3 ?_ ?_
    · intro y hy
      have : y = rd E.s0.memory (bo0 + BitVec.ofNat 64 56) + rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 := hy
      simp [this]
    · intro y hy; simp at hy ⊢; exact Or.inl hy
  unfold raS6
  refine hseqN (ra_st3 (S := fun f => (S3 f ∨ f = Fct.cellv (rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
      rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16) w) ∨ f = Fct.cellv (rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
        (rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8)) (n + BitVec.ofNat 64 1))
    (fun f hf => Or.inl (Or.inl (hS0_3 f hf))) ?_ hgw hEk) ?_
  · have hA1 : Avoid (fun f => S3 f ∨ f = Fct.cellv (rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
        rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16) w) E.Γ0 E.s0 (RaD E.s0)
        [bo0 + BitVec.ofNat 64 56, rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
          rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16] := by
      refine avoid_add (L := [bo0 + BitVec.ofNat 64 56]) hAv3 ?_ ?_
      · intro y hy
        have : y = rd E.s0.memory (bo0 + BitVec.ofNat 64 56) + rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 := hy
        simp [this]
      · intro y hy; simp at hy ⊢; exact Or.inl hy
    refine avoid_add (L := [bo0 + BitVec.ofNat 64 56, rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
          rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16]) hA1 ?_ ?_
    · intro y hy
      have : y = rd E.s0.memory (bo0 + BitVec.ofNat 64 56) + (rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) := hy
      simp [this]
    · intro y hy; simp at hy ⊢; tauto
  · refine hn_retR (fun f hf => Or.inl (Or.inl (Or.inl (Or.inl (Or.inl hf))))) ?_
    intro Γ p u hL
    exact ⟨(hL (Fct.cellv (bo0 + BitVec.ofNat 64 64) (rd E.s0.memory (bo0 + BitVec.ofNat 64 64) + BitVec.ofNat 64 1))
        (Or.inr rfl)).1,
      (hL (Fct.cellv (bo0 + BitVec.ofNat 64 56) (rd E.s0.memory (bo0 + BitVec.ofNat 64 56)))
        (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))).1⟩

end ra8

end InitECandidate.Solver.MemSafe.Wg
