import InitECandidate.Solver.Spec.Mpt.Leaves.FinKeccak

/-!
# `node_ref_len`, `node_hash_cached`, and `alloc` returning the old `heap_ptr`

* `alloc_ret_hp`: a return of `alloc(n)` is the entry `heap_ptr` (for every `n`, also `0`;
  `AllocSpec` says nothing about where an empty block starts).
* `ret_node_ref_len`: `node_ref_len(c)` writes nothing and returns `RL M c` (`1` for a null child,
  `33` for a hashed one, the cached length `rl` if `rl < 32`, otherwise `33`).
* `ret_node_hash_cached`: `node_hash_cached(c)` keeps every global but `heap_ptr`, keeps the
  allocator ordered with `heap_ptr` not lower, and writes only `c + 24`, the keccak buffers and
  the fresh heap.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals byteAlign_toNat)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword gHeap)

/-! ## `alloc` returns the entry `heap_ptr` -/

theorem alloc_ret_hp (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "alloc") (fun _ s r _ => ∀ v, r = .returned v → ∀ p, ptrsOf s = some p →
      ∃ q : BitVec 64, v = .val (.word q) ∧ q.toNat = p.hp) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv p hps
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hla⟩ := lookupCode_one MemSafe.AllocImpl.code_alloc hl
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := MemSafe.AllocImpl.ptrsOf_some hps
  have H := MemSafe.AllocImpl.hoareG_allocSkel (σ := σ) (X := X) hC (G := nm "heap_ptr") (k := 1)
    (c1 := .cmp .lower (.op .sub [cw 2952790016, lv (nm "p")]) (lv (nm "n")))
    (e := MemSafe.AllocImpl.roundUp) (c2 := .cmp .lower (cw 2952790016) (lv (nm "q")))
    (ret := nm "p") (s0 := s0) (P0 := a) (MemSafe.AllocImpl.lookup_of_gword ha)
    (Q := fun r _ => ∀ v, r = some (.returned v) → ∃ q : BitVec 64, v = .val (.word q) ∧
      q.toNat = a.toNat)
    (fun r t hab _ _ v hv => by
      cases hv
      rcases hab with ⟨e, w, he⟩ | ⟨e, he⟩ <;> cases he)
    (fun Qw v t _ _ _ hv _ _ _ w hw => by
      cases hw
      rw [lk_set_ne _ _ (by decide), lk_set_self] at hv
      cases hv
      exact ⟨a, rfl, rfl⟩)
  unfold MemSafe.AllocImpl.heapAllocBody at hr
  have := H s0 hs rfl (by rw [hr, hv]; simp [Good])
  rw [hr] at this
  exact this v (by rw [hv])

/-! ## Return guards and the keccak globals -/

/-- `if c { return e; } k`, the return branch seeing the true condition. -/
theorem hoare_retGuardC {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c e : ExpHOL 64} {k : ProgHOL 64}
    (hret : ∀ t, InCtx t X → P t → (∃ w, ev t c = some (.val (.word w)) ∧ w ≠ 0) → ∀ v,
      ev t e = some v → Q (some (.returned v)) (emptyLocalsHOLFinite t))
    (hk : Hoare σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) k Q) :
    Hoare σ X P (.seq (.ite c (.return e) .skip) k) Q :=
  hoare_seq (R := fun r t => (r = none ∧ P t ∧ ev t c = some (.val (.word 0))) ∨ (r ≠ none ∧ Q r t))
    (hoare_ite (hoare_return fun t hs ⟨hp, hc⟩ v hv => Or.inr ⟨by simp, hret t hs hp hc v hv⟩)
      (hoare_skip fun t _ ⟨hp, hc⟩ => Or.inl ⟨rfl, hp, hc⟩))
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoare_pre hk fun _ _ h => h.elim (fun h => ⟨h.2.1, h.2.2⟩) (fun h => absurd rfl h.1))

/-- The keccak globals survive a change of `heap_ptr` only. -/
theorem kOK_of {s t : State σ} {ks kp : BitVec 64} (h : KOK s ks kp)
    (hg : ∀ g, g ≠ gHeap → t.globals.lookup g = s.globals.lookup g) : KOK t ks kp := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨?_, ?_, h3, h4, h5, h6⟩
  · unfold gword; rw [hg _ (by decide)]; exact h1
  · unfold gword; rw [hg _ (by decide)]; exact h2

theorem rd_add0 (M : MemSafe.Mem) (c : BitVec 64) : rd M (c + BitVec.ofNat 64 0) = rd M c := by
  simp

/-! ## `node_ref_len` -/

/-- The length `node_ref_len(c)` returns, in memory `M`. -/
def RL (M : MemSafe.Mem) (c : BitVec 64) : BitVec 64 :=
  if c = 0 then BitVec.ofNat 64 1 else if rd M c = 0 then BitVec.ofNat 64 33 else
    if (rd M (c + BitVec.ofNat 64 16)).toNat < 32 then rd M (c + BitVec.ofNat 64 16)
    else BitVec.ofNat 64 33

theorem RL_congr {M M' : MemSafe.Mem} {c : BitVec 64} (h0 : c ≠ 0 → rd M' c = rd M c)
    (h16 : c ≠ 0 → rd M' (c + BitVec.ofNat 64 16) = rd M (c + BitVec.ofNat 64 16)) :
    RL M' c = RL M c := by
  unfold RL
  by_cases hc : c = 0
  · simp [hc]
  · rw [if_neg hc, if_neg hc, h0 hc, h16 hc]

/-- The facts of the body states of `node_ref_len`: memory and globals of the entry. -/
def RLS (C : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup (nm "child") = some (.val (.word C)) ∧ t.memory = s0.memory ∧
    t.globals = s0.globals

theorem ret_node_ref_len (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "node_ref_len") (fun vs s r t => ∀ v, r = .returned v →
      ∀ C : BitVec 64, vs = [.val (.word C)] → t.memory = s.memory ∧ t.globals = s.globals ∧
        v = .val (.word (RL s.memory C))) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv C hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_node_ref_len hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hc0 : s0.locals.lookup (nm "child") = some (.val (.word C)) := by rw [hloc]; exact hA
  let Q : Option (PanSemResultExact 64) → State σ → Prop := fun r t => ∀ v, r = some (.returned v) →
    t.memory = s0.memory ∧ t.globals = s0.globals ∧ v = .val (.word (RL s0.memory C))
  have H : Hoare σ X (RLS C s0) nrlBody Q := by
    unfold nrlBody
    refine hoare_retGuardC (fun t _ ⟨hl, hm, hg⟩ ⟨w, hw, hw0⟩ v hv u hu => ?_) ?_
    · cases hu
      have hC0 := equal_true (cmp_val_true hw hw0 (ev_lw hl) (ev_cw _ 0))
      rw [ev_cw] at hv
      cases hv
      refine ⟨hm, hg, ?_⟩
      rw [RL, if_pos (by rw [hC0]; rfl)]
    refine hoare_retGuardC (fun t _ ⟨⟨hl, hm, hg⟩, hc⟩ ⟨w, hw, hw0⟩ v hv u hu => ?_) ?_
    · cases hu
      have hCne : C ≠ 0 := equal_false (cmp_val_false hc (ev_lw hl) (ev_cw _ 0))
      obtain ⟨x, y, hx, hy, hv'⟩ := ev_cmp_inv hw
      obtain ⟨w0, hw0', -, hx'⟩ := ev_load1_inv' hx
      rw [ev_add_cw hl 0] at hw0'
      cases hw0'
      cases hx'
      rw [ev_cw] at hy
      cases hy
      have hk : rd t.memory (C + BitVec.ofNat 64 0) = 0 :=
        equal_true (cmp_val_true hw hw0 hx (ev_cw _ 0))
      rw [ev_cw] at hv
      cases hv
      refine ⟨hm, hg, ?_⟩
      rw [rd_add0, hm] at hk
      rw [RL, if_neg hCne, if_pos hk]
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_dec fun t _ ⟨⟨⟨⟨hl, hm, hg⟩, hc1⟩, hc2⟩, _⟩ v hv _ => ?_
    obtain ⟨w16, hw16, -, rfl⟩ := ev_load1_inv' hv
    rw [ev_add_cw hl 16] at hw16
    cases hw16
    have hCne : C ≠ 0 := equal_false (cmp_val_false hc1 (ev_lw hl) (ev_cw _ 0))
    have hk0 : rd s0.memory C ≠ 0 := by
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc2
      obtain ⟨w0, hw0', -, hx'⟩ := ev_load1_inv' hx
      rw [ev_add_cw hl 0] at hw0'
      cases hw0'
      cases hx'
      rw [ev_cw] at hy
      cases hy
      have := equal_false hxy
      rwa [rd_add0, hm] at this
    have hrl : (setVarHOLFinite (nm "rl") (.val (.word (rd t.memory (C + BitVec.ofNat 64 16)))) t).locals.lookup
        (nm "rl") = some (.val (.word (rd t.memory (C + BitVec.ofNat 64 16)))) := lk_set_self _ _ _
    refine hoare_retGuardC (fun u _ hu ⟨w, hw, hw0⟩ v' hv' x hx => ?_) ?_
    · subst hu
      cases hx
      rw [ev_lw hrl] at hv'
      cases hv'
      have hlt := lower_true (cmp_val_true hw hw0 (ev_lw hrl) (ev_cw _ 32))
      refine ⟨hm, hg, ?_⟩
      rw [hm] at hlt ⊢
      rw [RL, if_neg hCne, if_neg hk0, if_pos (by simpa using hlt)]
    · refine hoare_return fun u _ ⟨hu, hc⟩ v' hv' x hx => ?_
      subst hu
      cases hx
      rw [ev_cw] at hv'
      cases hv'
      have hge := lower_false (cmp_val_false hc (ev_lw hrl) (ev_cw _ 32))
      refine ⟨hm, hg, ?_⟩
      rw [hm] at hge
      rw [RL, if_neg hCne, if_neg hk0, if_neg (by simp at hge ⊢; omega)]
  have := H s0 hs ⟨hc0, rfl, rfl⟩ (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

/-! ## `node_hash_cached` -/

/-- The allocator frame of `node_hash_cached` and `node_write_ref`: every global but `heap_ptr`
kept, the allocator ordered with `heap_ptr` not lower, memory changed only in `W hp'`. -/
def AFr (p : Ptrs) (s0 : State σ) (W : Nat → BitVec 64 → Prop) (t : State σ) : Prop :=
  (∀ g, g ≠ gHeap → t.globals.lookup g = s0.globals.lookup g) ∧
    ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.hp ≤ p'.hp ∧
      ∀ a, t.memory a ≠ s0.memory a → W p'.hp a

theorem aFr_locals {p : Ptrs} {s0 t : State σ} {W : Nat → BitVec 64 → Prop}
    (L : Locals) (h : AFr p s0 W t) : AFr p s0 W { t with locals := L } := h

theorem aFr_refl {p : Ptrs} {s0 : State σ} {W : Nat → BitVec 64 → Prop} (hp : ptrsOf s0 = some p)
    (ho : p.Ordered) : AFr p s0 W s0 :=
  ⟨fun _ _ => rfl, p, hp, ho, le_rfl, fun _ h => absurd rfl h⟩

/-- The cells `node_hash_cached(C)` may write, with the heap pointer `hp'` reached. -/
def HcW (p : Ptrs) (ks kp C : BitVec 64) (hp' : Nat) (a : BitVec 64) : Prop :=
  a = C + 24 ∨ KIn ks kp a ∨ (p.hp ≤ a.toNat ∧ a.toNat < hp')

theorem ret_node_hash_cached (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomTop X) :
    FunSpec σ X (nm "node_hash_cached") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (C ks kp : BitVec 64) (p : Ptrs), vs = [.val (.word C)] → ptrsOf s = some p → p.Ordered →
        KOK s ks kp → AFr p s (HcW p ks kp C) t) := by
  intro vs body callee rs hl s0 hs hloc r hr v hv C ks kp p hvs hp hord hK
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA0⟩ := lookupCode_one code_node_hash_cached hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hn0 : s0.locals.lookup (nm "node") = some (.val (.word C)) := by rw [hloc]; exact hA0
  let Q : Option (PanSemResultExact 64) → State σ → Prop := fun r t => ∀ v, r = some (.returned v) →
    AFr p s0 (HcW p ks kp C) t
  have hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L } := fun _ _ _ h => h
  have H : Hoare σ X (fun t => t = s0) nhcBody Q := by
    unfold nhcBody
    refine hoare_decL hQ fun s1 _ hs1 v1 hv1 _ => ?_
    subst s1
    let P1 : State σ → Prop := fun t => t.locals.lookup (nm "node") = some (.val (.word C)) ∧
      t.memory = s0.memory ∧ t.globals = s0.globals
    refine hoare_pre (P := P1) ?_ fun t _ ht => ?_
    · refine hoare_retGuardC (fun t _ ⟨_, hm, hg⟩ _ v _ u hu => ?_) ?_
      · cases hu
        refine ⟨fun g _ => by show t.globals.lookup g = _; rw [hg], p, ?_, hord, le_rfl,
          fun a ha => absurd (by show t.memory a = s0.memory a; rw [hm]) ha⟩
        show ptrsOf t = _
        rw [ptrsOf_frame hg]; exact hp
      refine hoare_guard_seq (funRet_mpt_fail hC) ?_
      refine hoare_decCallL ((MemSafe.allocSpec_alloc hC).and (Spec.Inv.funSpec_be _)) hQ
        fun t _ ⟨⟨⟨hl, hm, hg⟩, _⟩, _⟩ vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
      rw [evs_cons (ev_cw _ 32) evs_nil] at hvs
      cases hvs
      have hpt : ptrsOf (callEntryStateHOLFinite t callee) = some p := by
        show ptrsOf t = _; rw [ptrsOf_frame hg]; exact hp
      obtain ⟨hm1, hg1, p1, hp1, ho1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hpt hord
      obtain ⟨q, rfl, hq8, ⟨hq1, hq2⟩, hfree⟩ := hq _ rfl
      have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
      rw [h32] at hq2 hfree
      have hpq : p.hp ≤ q.toNat := alloc_start hq1 (by omega) hfree
      have hE := heapEnd_lt'
      have hqE : q.toNat + 32 ≤ heapEnd := le_trans hq2 ho1.2.1
      -- the state after the allocation
      let s2 := setVarHOLFinite (nm "h") (.val (.word q)) { st with locals := t.locals }
      have hm2 : s2.memory = s0.memory := by show st.memory = _; rw [hm1]; exact hm
      have hg2 : ∀ g, g ≠ gHeap → s2.globals.lookup g = s0.globals.lookup g := fun g hgn => by
        show st.globals.lookup g = _; rw [hg1 g hgn]; show t.globals.lookup g = _; rw [hg]
      have hp2 : ptrsOf s2 = some p1 := hp1
      have hl2 : s2.locals.lookup (nm "node") = some (.val (.word C)) := by
        rw [lk_set_ne _ _ (by decide)]; exact hl
      have hh2 : s2.locals.lookup (nm "h") = some (.val (.word q)) := lk_set_self _ _ _
      refine hoare_pre (P := fun u => u = s2) ?_ fun u _ hu => hu
      unfold nhcK
      -- `keccak256(lds (node + 8), lds (node + 16), h)`
      refine hoare_seq (R := fun r u => r = none ∧ u.locals = s2.locals ∧
          (∀ g, g ≠ gHeap → u.globals.lookup g = s0.globals.lookup g) ∧ ptrsOf u = some p1 ∧
          ∀ a, u.memory a ≠ s0.memory a → KIn ks kp a ∨ (q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + 32))
        ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_callD (ret_keccak256 hC hA hT) fun u _ hu vs hvs callee' v' st' hR' _ => ?_
        subst hu
        obtain ⟨u1, us1, rfl, h1, hus1⟩ := evs_cons_inv hvs
        obtain ⟨u2, us2, rfl, h2, hus2⟩ := evs_cons_inv hus1
        obtain ⟨u3, us3, rfl, h3, hus3⟩ := evs_cons_inv hus2
        have : us3 = [] := by
          have h0 : evs s2 ([] : List (ExpHOL 64)) = some [] := evs_nil
          rw [h0] at hus3; exact (Option.some.inj hus3).symm
        subst this
        obtain ⟨w8, -, -, rfl⟩ := ev_load1_inv' h1
        obtain ⟨w16, -, -, rfl⟩ := ev_load1_inv' h2
        rw [ev_lw hh2] at h3
        cases h3
        have hK2 : KOK (callEntryStateHOLFinite s2 callee') ks kp := kOK_of hK hg2
        obtain ⟨hgk, hmk⟩ := hR' v' rfl _ _ q ks kp rfl hK2 (by omega)
        refine ⟨rfl, rfl, fun g hgn => by show st'.globals.lookup g = _; rw [hgk]; exact hg2 g hgn,
          by show ptrsOf st' = _; rw [ptrsOf_frame hgk]; exact hp2, fun a ha => ?_⟩
        by_cases e : st'.memory a = s2.memory a
        · exact absurd (by rw [e]; exact hm2 ▸ rfl) ha
        · rcases mod_ne hmk e with hk | hov
          · exact Or.inl hk
          · have := ovl_in hq8 hov; exact Or.inr this
      -- `st node + 24, h; return h`
      refine hoare_seq (R := fun r u => r = none ∧ u.locals = s2.locals ∧
          (∀ g, g ≠ gHeap → u.globals.lookup g = s0.globals.lookup g) ∧ ptrsOf u = some p1 ∧
          ∀ a, u.memory a ≠ s0.memory a → a = C + 24 ∨ KIn ks kp a ∨
            (q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + 32)) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_store fun u _ ⟨_, hlu, hgu, hpu, hmu⟩ w x mem hw hx hmem => ?_
        rw [ev_add_cw (by rw [hlu]; exact hl2) 24] at hw
        cases hw
        rw [ev_lw (by rw [hlu]; exact hh2)] at hx
        cases hx
        obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
        refine ⟨rfl, hlu, hgu, hpu, fun a ha => ?_⟩
        by_cases e : a = C + BitVec.ofNat 64 24
        · exact Or.inl e
        · rw [show ({ u with memory := Spec.Inv.upd u.memory (C + BitVec.ofNat 64 24) q } : State σ).memory a
            = u.memory a from Spec.Inv.upd_ne e] at ha
          exact Or.inr (hmu a ha)
      · refine hoare_return fun u _ ⟨_, _, hgu, hpu, hmu⟩ v' _ x hx => ?_
        refine ⟨hgu, p1, hpu, ho1, hmono.1, fun a ha => ?_⟩
        rcases hmu a ha with h | h | h
        · exact Or.inl h
        · exact Or.inr (Or.inl h)
        · exact Or.inr (Or.inr ⟨by omega, by omega⟩)
    · subst ht
      exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn0, rfl, rfl⟩
  have := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

end InitECandidate.Solver.Spec.Mpt.Leaves
