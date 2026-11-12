import InitECandidate.Solver.MemSafe.Wg.Ra8

/-!
# Wg: `requests_append` as a `CallR`
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

theorem callR_ra : CallR (σ := σ) (nm "requests_append") RaPre (fun _ s _ => RaD s)
    (fun _ s _ _ _ t _ _ => RaQ s t) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨tb, d, n, hvs, hnl, bo0, hgw, hbo, hrq, hk4⟩
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_ra hl
  have hb0 := hbind 0 (by simp) (by rw [hvs]; simp)
  have hb1 := hbind 1 (by simp) (by rw [hvs]; simp)
  have hb2 := hbind 2 (by simp) (by rw [hvs]; simp)
  subst hvs
  simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hb0 hb1 hb2
  let E : EbE σ := ⟨Γ, s, p⟩
  let En : Env := Env.set (Env.set (Env.set (fun _ => none) (nm "type_byte") (.val (.word tb))) (nm "data") (.val (.word d)))
    (nm "n") (.val (.word n))
  have hEn : En (nm "n") = some (.val (.word n)) := by simp (config := { decide := true }) [En, Env.set]
  have hnone : ∀ x : MlS, x ≠ nm "type_byte" → x ≠ nm "data" → x ≠ nm "n" → En x = none := fun x h1 h2 h3 => by
    simp [En, Env.set, h1, h2, h3]
  obtain ⟨q, hq, hord, hL0, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hp.symm.trans hq)
  obtain ⟨ob, hob, hob1, hob2, hob3⟩ := hbo
  obtain ⟨orq, horq, horq1, horq2, horq3⟩ := hrq
  have hbc56 := blk_cell (off := 56) ⟨ob, hob, hob1, hob2, hob3⟩ tBO_block tBO_prot (by omega) (by omega)
  have hbc64 := blk_cell (off := 64) ⟨ob, hob, hob1, hob2, hob3⟩ tBO_block tBO_prot (by omega) (by omega)
  obtain ⟨M1, k1, hM1, hM1t, hk1, hp1, he1⟩ := hbc56
  obtain ⟨M2, k2, hM2, hM2t, hk2, hp2, he2⟩ := hbc64
  have hpa : PA E En (RaS Γ s bo0) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, ?_⟩
    · intro f hf
      rcases hf with (hf | rfl | rfl | rfl | rfl | rfl) | rfl
      · exact frS_entry f hf
      · exact ⟨hgw, ob, hob, hob1, hob2⟩
      · exact ⟨ob, hob, hob1, hob2, hob3⟩
      · exact ⟨orq, horq, horq1, horq2, horq3⟩
      · exact ⟨rfl, M1, hM1, hM1t, k1, hk1, hp1, he1⟩
      · exact hk4
      · exact ⟨rfl, M2, hM2, hM2t, k2, hk2, hp2, he2⟩
    · intro x w hx
      by_cases h1 : x = nm "type_byte"
      · subst h1
        simp (config := { decide := true }) [En, Env.set] at hx
        subst hx; rw [hloc]; exact hb0.1
      · by_cases h2 : x = nm "data"
        · subst h2
          simp (config := { decide := true }) [En, Env.set] at hx
          subst hx; rw [hloc]; exact hb1.1
        · by_cases h3 : x = nm "n"
          · subst h3
            rw [hEn] at hx; cases hx; rw [hloc]; exact hb2.1
          · rw [hnone x h1 h2 h3] at hx; cases hx
  have hh := ra_walk (E := E) (En := En) hnl hgw hEn (hnone _ (by decide) (by decide) (by decide))
    (hnone _ (by decide) (by decide) (by decide))
  have hres := hh s hs hpa (by rw [hr, hv]; trivial)
  obtain ⟨Γ', p', hr', hL', hQ⟩ := hres v (by rw [hr, hv])
  exact ⟨Γ', p', stp_of_ret hG hr' hL', bo0, hgw, hQ.1, hQ.2⟩

theorem hypRa : CallR (σ := σ) (nm "requests_append") RaPre (fun _ s _ => RaD s) (fun _ s _ _ _ t _ _ => RaQ s t) ∧
    GwK (σ := σ) (nm "requests_append") WgW :=
  ⟨callR_ra, gwk_wg (by decide)⟩

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.hypRa
