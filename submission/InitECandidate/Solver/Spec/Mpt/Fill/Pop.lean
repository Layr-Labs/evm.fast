import InitECandidate.Solver.Spec.Mpt.Fill.Scan

/-!
# The pop arm of `_node_rlp_fill`

`_node_rlp_finish(top, nd); top = ld top;` — against `FinishSpec`. The finish writes only
cache cells of nodes, keccak cells and unallocated cells (`SafeW`), so the trie facts and the
rest of the chain survive; `top` moves to the next record, one record fewer.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- The facts at the start of the push / pop arms. -/
def ArmPre (Nd : BitVec 64 → Prop) (HP0 S0 d : Nat) (p : Ptrs) (T N : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ptrsOf t = some p ∧ p.Ordered ∧ HP0 ≤ p.hp ∧ heapBase ≤ HP0 ∧ p.sp ≤ S0 ∧ S0 ≤ scratchEnd ∧
    TrieOK t Nd HP0 ∧ t.locals.lookup (nm "top") = some (.val (.word T)) ∧
    t.locals.lookup (nm "nd") = some (.val (.word N)) ∧ rd t.memory (T + 8) = N ∧
    ChainF t Nd HP0 p.hp S0 (d + 1) p.sp false T

/-- `CacheW` cells are cache cells of nodes of `Nd`. -/
theorem cacheW_safe {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP0 : Nat}
    {N a : BitVec 64} (hsh : NdShape s.memory Nd HP0) (hN : Nd N) (h : CacheW s.memory N a) :
    ∃ b, Nd b ∧ CacheCell b a := by
  rcases h with rfl | rfl | ⟨c, hc, rfl, h⟩
  · exact ⟨N, hN, Or.inl rfl⟩
  · exact ⟨N, hN, Or.inr (Or.inl rfl)⟩
  · refine ⟨c, ?_, Or.inr (Or.inr rfl)⟩
    rcases h with ⟨hk, rfl⟩ | ⟨hk, i, hi, rfl⟩
    · rcases (hsh N hN).2.2.2.1 hk with h | h
      · omega
      · exact h
    · rcases (hsh N hN).2.2.2.2 hk i hi with h | h
      · omega
      · exact h

/-- **The pop arm.** -/
theorem pop_step (hfin : FinishSpec σ X) {Nd : BitVec 64 → Prop} {HP0 S0 d : Nat} {p : Ptrs}
    {T N : BitVec 64} :
    Hoare σ X (ArmPre Nd HP0 S0 d p T N) popArm
      (fun r t => r = none ∧ FInv Nd HP0 S0 t ∧ fMu t < (p.sp - heapEnd) / 24 + (d + 1)) := by
  unfold popArm
  refine hoare_seq (R := fun r u => r = none ∧ ∃ p' : Ptrs, ptrsOf u = some p' ∧ p'.Ordered ∧
      p.hp ≤ p'.hp ∧ p'.sp = p.sp ∧ HP0 ≤ p.hp ∧ heapBase ≤ HP0 ∧ p.sp ≤ S0 ∧ S0 ≤ scratchEnd ∧
      TrieOK u Nd HP0 ∧ u.locals.lookup (nm "top") = some (.val (.word T)) ∧
      ChainF u Nd HP0 p'.hp S0 d (T.toNat + 48) true (rd u.memory T) ∧ p.sp ≤ T.toNat) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (hfin.and (funSpec_be _)) fun s _ hs vs hvs callee v st ⟨hR, hbe⟩ _ => ?_
    obtain ⟨hp, hord, h0, hb0, hsp, hS0, htr, hT, hN, hT8, hch⟩ := hs
    rw [evs_cons (ev_lw hT) (evs_cons (ev_lw hN) evs_nil)] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    obtain ⟨h0', h1, h2, ⟨r1, r2, -, -, r5, r6⟩, h4⟩ := hch
    rw [hT8] at r1 r2 r5 r6
    have hhp := hord.2.1
    obtain ⟨⟨p', hp', hord', hhp', hsp', hk1, hk2⟩, hfoot⟩ := hR v rfl T N p rfl hp hord
      ⟨Nd, trieOK_mono h0 htr, r1, r2⟩ r5
      (fun hk3 => by obtain ⟨c1, c2⟩ := r6 hk3; exact ⟨le_trans hb0 c1, c2⟩)
    set u : PanSemStateFiniteExact 64 σ := { st with locals := s.locals }
    have hw : ∀ x, u.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp S0 x := by
      intro x hx
      rcases hfoot x hx with h | h | h
      · exact Or.inl (cacheW_safe htr.1 r1 h)
      · exact Or.inr (Or.inl h)
      · exact safe_of_unalloc hord (le_refl _) hS0 h
    have hspE := heapEnd_le_sp hord
    obtain ⟨hSS, hrec, hheap⟩ := safe_keeps htr h0 hhp hspE (by omega) hw
    have hbe' : u.be = s.be := hbe
    refine ⟨rfl, p', hp', hord', hhp', hsp', h0, hb0, hsp, hS0,
      trieOK_frame (by omega) htr hSS hk1 hk2, hT, ?_, h1⟩
    rw [rd_eq (hrec T h1 (by omega))]
    exact chainF_frame (by omega) hbe' hhp' hSS hheap htr.1 (by omega) d _ _
      (fun x hx1 hx2 => hrec x (by omega) hx2) h4
  · refine hoare_assign fun u _ ⟨_, p', hp', hord', hhp', hsp', h0, hb0, hsp, hS0, htr, hT, hch, hT48⟩
      v hv _ => ⟨rfl, ?_⟩
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
    rw [ev_add_cw hT 0] at hw
    cases hw
    have hT0 : T + BitVec.ofNat 64 0 = T := by simp
    rw [hT0, mem_word u.memory]
    set u2 := setVarHOLFinite (nm "top") (.val (.word (rd u.memory T))) u
    have hp2 : ptrsOf u2 = some p' := hp'
    have hch2 : ChainF u2 Nd HP0 p'.hp S0 d p'.sp false (rd u.memory T) :=
      chainF_false_of (chainF_mono_lo (by omega) (chainF_of_eq (s := u) (t := u2) rfl rfl hch))
    refine ⟨⟨p', hp2, hord', by omega, hb0, by omega, hS0, htr, _, d, lk_set_self _ _ _, hch2⟩, ?_⟩
    rw [fMu_of hp2 (lk_set_self _ _ _) hS0 hch2, hsp']
    omega

end InitECandidate.Solver.Spec.Mpt
