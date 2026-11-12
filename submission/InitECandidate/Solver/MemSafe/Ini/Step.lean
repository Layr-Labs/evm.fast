import InitECandidate.Solver.MemSafe.Ini.Loop

/-!
# `nodedb_build`: the three statements of the loop body
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop)

variable {σ : Type} {X : Ctx 64}

section steps
variable {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} {A N C T ks kp W : BitVec 64}

/-- `keccak256(arr[i].ptr, arr[i].len, mpt_hash_scratch)`. -/
theorem step_kec (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode)
    (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hD : DomTop X) (I : BitVec 64) :
    HoareG σ X (JS s0 Γ0 p0 A N C T I) (.call (some (none, none)) (nm "keccak256") ndbKecArgs)
      (NQ (JS s0 Γ0 p0 A N C T I) (FinQ s0 Γ0 p0 A N)) := by
  refine nq_call (funSpec_kecLc hX hA hD) (fun _ _ _ _ h => h.2) ?_
  intro s hs ⟨⟨hLV, hIN, H, he, ht⟩, hlt⟩ vs hvs callee v st hR hst
  have e1 := ev_el hLV
  have e2 := ev_el8 hLV
  have eW := ev_hs he sta.hK
  unfold ndbKecArgs at hvs
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  obtain ⟨w1, hw1, -, rfl⟩ := Struct.ev_load1_inv h1
  obtain ⟨w2, hw2, -, rfl⟩ := Struct.ev_load1_inv h2
  rw [eW] at h3
  cases h3
  have he' : Eff s0 (callEntryStateHOLFinite s callee) Γ0 p0 H := eff_congr he rfl rfl rfl rfl
  obtain ⟨hef, hfr⟩ := kec_eff he' sta.hK hR
  have hef' : Eff s0 { st with locals := s.locals } Γ0 p0 H := eff_congr hef rfl rfl rfl rfl
  refine ⟨⟨hLV, hIN, H, hef', ?_⟩, hlt⟩
  refine tbl_frame (st := { st with locals := s.locals }) ht (hef.dom.trans he.dom.symm)
    (hef.be.trans he.be.symm) (fun a hr h8 => ?_)
  have hb := ht.2.2.1 a hr
  have hnS : ¬ SCell Types.guestC Γ0 a := fun hsc => by
    have := sta.hscell a hsc
    have := he.hi
    omega
  exact hfr a hnS

/-- `htab_set(t, mpt_hash_scratch, arr + 16 i)`. -/
theorem step_set (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode) (I : BitVec 64) :
    HoareG σ X (JS s0 Γ0 p0 A N C T I) (.call (some (none, none)) (nm "htab_set") ndbSetArgs)
      (NQ (JM s0 Γ0 p0 A N C T I) (FinQ s0 Γ0 p0 A N)) := by
  refine nq_call (funSpec_setLc hX) (fun _ _ _ _ h => h.2) ?_
  intro s hs ⟨⟨hLV, hIN, H, he, ht⟩, hlt⟩ vs hvs callee v st hR hst
  have e1 := ev_el hLV
  have eW := ev_hs he sta.hK
  have eT : ev s (lv (nm "t")) = some (.val (.word T)) := lvi_ev hLV (by simp [kvL])
  unfold ndbSetArgs at hvs
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  rw [eT] at h1
  cases h1
  rw [eW] at h2
  cases h2
  rw [e1] at h3
  cases h3
  have he' : Eff s0 (callEntryStateHOLFinite s callee) Γ0 p0 H := eff_congr he rfl rfl rfl rfl
  have ht' : Tbl p0 A T I.toNat (callEntryStateHOLFinite s callee) H := tbl_congr ht rfl rfl rfl
  have hWb : W.toNat + 32 ≤ 2 ^ 64 := by
    have := sta.hK.Wb
    have : scratchEnd < 2 ^ 63 := by decide
    omega
  obtain ⟨H1, hef, htb⟩ := set_eff he' ht' hWb (sta_wout sta) hR
  exact ⟨hLV, hlt, H1, eff_congr hef rfl rfl rfl rfl, tbl_congr htb rfl rfl rfl⟩

end steps

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.step_kec
#print axioms InitECandidate.Solver.MemSafe.Ini.step_set
