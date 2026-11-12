import InitECandidate.Solver.MemSafe.Ini.Final

/-!
# `nodedb_build`: the summary

**`sumSpecA_nodedb_build`**: from `G`, a slice array of `n < 2^19` records (`SlArr`), `nodedb_build(arr, n)` returns a node DB
that is `NdbR` at `Γ' = Γ ++ [header, node array]` (two objects of the frozen type `tF`), writing only
scalar cells and fresh bytes (`PW = False`).
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
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Wit

variable {σ : Type}

/-- The precondition: a slice array of `n < 2^19` records. -/
def NdbPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ arr n : BitVec 64, vs = [.val (.word arr), .val (.word n)] ∧ SlArr Γ s.memory arr n.toNat ∧
    n.toNat < 2 ^ 24

theorem sumSpecA_nodedb_build {tF : Nat} (hF : FrzTy tF) :
    SumSpecA σ guestCtx Types.guestC (guestHooksR (σ := σ)) (nm "nodedb_build") Wit.ndbSig NdbPre
      (fun _ _ _ _ => False)
      (fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∃ T, v = .val (.word T) ∧ NdbR Γ' t.memory T) := by
  have hF0 := Rec.foldOK_guestR (σ := σ)
  have hX := hF0.hX
  have hW : HtabNewW σ guestCtx := Spec.Inv.funSpec_htab_newW hX
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  have hl' := hl
  rw [hX] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_ndb hl'
  obtain ⟨A, N, rfl, hSL, hN⟩ := hpre
  obtain ⟨p1, hps, -⟩ := hargs
  obtain ⟨p, hp', hord, hL, -⟩ := id hG
  have hpp : p = p1 := Option.some.inj (hp'.symm.trans hps)
  subst hpp
  obtain ⟨ks, kp, W, hK⟩ := ks_of_G hG
  have sta : Sta s Γ p N ks kp W := ⟨hK, hps, hord, fun x hx => scell_out hord hL hx, hN⟩
  have hLV : LVi [(nm "slice_arr", .val (.word A)), (nm "n", .val (.word N))] s.locals := by
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rw [hloc]
    rcases hq with rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
  obtain ⟨H0, he0⟩ := eff_init hps hord (Γ0 := Γ)
  have hq := body_ndb (A := A) sta hX hF0.hal Mpt.Leaves.domTop_guestCtx hW s hs ⟨hLV, H0, he0⟩ (by rw [hr]; exact hgood)
  rw [hr] at hq
  rcases hq.2 r rfl with hab | ⟨v, rfl, H, T, rfl, he, ht⟩
  · exact absurd hab hna
  obtain ⟨Γ', p', hpt, hmono, hext, hnf, hG', hndb⟩ := ndb_final hF hG hps hSL he ht
  refine ⟨Γ', p, p', ⟨hps, hpt, hmono, hext, hnf, hG', ?_, ?_, fun h => by simp [Wit.ndbSig] at h, ?_⟩, ?_⟩
  · -- the writes
    intro a ha
    apply he.mem
    rintro (h1 | h1)
    · exact ha (Or.inl (by
        obtain ⟨o, ho, k, hk, hsc, rfl⟩ := h1
        exact ⟨o, ho, k, hk, by rw [hsc]; decide, rfl⟩))
    · exact ha (Or.inr (Or.inr (Or.inl fun hal => by
        unfold Ptrs.Allocated at hal
        obtain ⟨-, -, d3, d4, -⟩ := hord
        have := he.hi
        omega)))
  · intro g hg hng
    exact he.glob g (fun e => (Annot.drv_allocG g (Or.inl e)).1 (e ▸ hg))
  · intro v hv i rt w hrt
    simp [Wit.ndbSig] at hrt
  · intro v hv
    cases hv
    exact ⟨T, rfl, hndb⟩


/-- The frozen block type id (unused by the guest's type table, so the default descriptor: heap, all `prot`, size 0). -/
abbrev tFRZ : Nat := 79

theorem frzTy_79 : FrzTy tFRZ where
  recOK := by decide
  reg := by decide
  prot := fun k => by
    have : (Types.guestC.ty tFRZ) = default := rfl
    rw [this]
    simp [TyD.slot, default, Inhabited.default]
  min := by decide
  tag := by decide
  nrec := by decide
  nn := by unfold NotNodeTy; decide

theorem sumSpecA_nodedb_build_79 :
    SumSpecA σ guestCtx Types.guestC (guestHooksR (σ := σ)) (nm "nodedb_build") Wit.ndbSig NdbPre
      (fun _ _ _ _ => False)
      (fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∃ T, v = .val (.word T) ∧ NdbR Γ' t.memory T) :=
  sumSpecA_nodedb_build frzTy_79

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.sumSpecA_nodedb_build
#print axioms InitECandidate.Solver.MemSafe.Ini.frzTy_79
