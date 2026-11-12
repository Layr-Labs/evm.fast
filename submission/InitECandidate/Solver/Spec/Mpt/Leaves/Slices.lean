import InitECandidate.Solver.Spec.Mpt.Leaves.SliceFns

/-!
# `rlp_list_to_slices`: located slices

```
fun {1,1} rlp_list_to_slices(1 p, 1 len) {
  var 1 count = rlp_list_count(p, len);
  var 1 arr = alloc(count * 16);
  var i = 0; var off = 0;
  while i <+ count {
    var 1 total = rlp_item_total_unchecked(p + off);
    st arr + i * 16, p + off; st arr + i * 16 + 8, total;
    off = off + total; i = i + 1; }
  return <arr, count>; }
```

The list payload `[P, P + N)` lies in allocated heap (`SlPre`), so no callee and no store of the
function changes its bytes (`b8_eq_of_ff`). `rlp_list_count` validates `count` items whose
totals, `itot` of the entry memory at the offsets `offs`, step through `[0, N]`
(`funSpec_rlp_list_count_parsed`, `Parsed`); the re-parse computes the same totals
(`funSpec_rlp_item_total_unchecked`, `itot_frame`) and stores the slice `(P + offs j, itot …)` at
`arr + 16 j`, a fresh cell. So every stored slice lies inside `[P, P + N)`:
`freshFoot_rlp_list_to_slices : FreshFoot … SlPre SlQ`.
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
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## Item offsets -/

/-- The offset of item `k` of the list at `P`. -/
def offs (M : MemSafe.Mem) (be : Bool) (P : BitVec 64) : Nat → Nat
  | 0 => 0
  | k + 1 => offs M be P k + (itot M be (P + BitVec.ofNat 64 (offs M be P k))).toNat

/-- The first `C` items of the list `[P, P + N)` are well-formed: each starts before `N`, its total
covers the header and its length bytes, and it ends by `N`. -/
def Parsed (M : MemSafe.Mem) (be : Bool) (P : BitVec 64) (N C : Nat) : Prop :=
  ∀ k, k < C → offs M be P k < N ∧
    1 + llOf (b8 M be (P + BitVec.ofNat 64 (offs M be P k))).toNat ≤
      (itot M be (P + BitVec.ofNat 64 (offs M be P k))).toNat ∧ offs M be P (k + 1) ≤ N

theorem parsed_zero (M : MemSafe.Mem) (be : Bool) (P : BitVec 64) (N : Nat) : Parsed M be P N 0 :=
  fun _ h => absurd h (by omega)

theorem parsed_snoc {M : MemSafe.Mem} {be : Bool} {P : BitVec 64} {N C : Nat}
    (h : Parsed M be P N C) (h1 : offs M be P C < N)
    (h2 : 1 + llOf (b8 M be (P + BitVec.ofNat 64 (offs M be P C))).toNat ≤
      (itot M be (P + BitVec.ofNat 64 (offs M be P C))).toNat)
    (h3 : offs M be P (C + 1) ≤ N) : Parsed M be P N (C + 1) := by
  intro k hk
  by_cases e : k = C
  · subst e; exact ⟨h1, h2, h3⟩
  · exact h k (by omega)

theorem le_offs {M : MemSafe.Mem} {be : Bool} {P : BitVec 64} {N C : Nat} (h : Parsed M be P N C) :
    ∀ k, k ≤ C → k ≤ offs M be P k
  | 0, _ => Nat.zero_le _
  | k + 1, hk => by
      have := le_offs h k (by omega)
      have := (h k (by omega)).2.1
      rw [offs]
      omega

theorem parsed_le {M : MemSafe.Mem} {be : Bool} {P : BitVec 64} {N C : Nat} (h : Parsed M be P N C) :
    C ≤ N := by
  rcases C with _ | k
  · omega
  · have := le_offs h (k + 1) le_rfl
    have := (h k (by omega)).2.2
    omega

/-! ## The payload bytes are unchanged -/

theorem ofNat_add_ofNat (a b : Nat) :
    BitVec.ofNat 64 a + BitVec.ofNat 64 b = BitVec.ofNat 64 (a + b) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

/-- A byte in the live heap is unchanged by writes to unallocated cells. -/
theorem b8_eq_of_ff {p : Ptrs} {M M' : MemSafe.Mem} {be : Bool} {x : BitVec 64}
    (hff : ∀ a : BitVec 64, M' a ≠ M a → ¬ p.Allocated a.toNat) (h1 : heapBase ≤ x.toNat)
    (h2 : x.toNat < p.hp) : b8 M' be x = b8 M be x := by
  have hcell : M' (panByteAlignHOL x) = M (panByteAlignHOL x) := by
    by_contra hne
    apply hff _ hne
    left
    rw [MemSafe.Helpers.byteAlign_toNat]
    unfold heapBase at h1 ⊢
    constructor <;> omega
  unfold b8 byteOf
  rw [rd_eq_of hcell]

/-- The payload `[P, P + N)` (allocated heap) reads the same bytes. -/
theorem data_eq {p : Ptrs} {M M' : MemSafe.Mem} {be : Bool} {P N : BitVec 64}
    (hff : ∀ a : BitVec 64, M' a ≠ M a → ¬ p.Allocated a.toNat) (hP : heapBase ≤ P.toNat)
    (hPN : P.toNat + N.toNat ≤ p.hp) (hhp : p.hp ≤ heapEnd) :
    ∀ j, j < N.toNat → b8 M' be (P + BitVec.ofNat 64 j) = b8 M be (P + BitVec.ofNat 64 j) := by
  intro j hj
  have e : (P + BitVec.ofNat 64 j).toNat = P.toNat + j := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by unfold heapEnd at hhp; omega),
      Nat.mod_eq_of_lt (by unfold heapEnd at hhp; omega)]
  exact b8_eq_of_ff hff (by omega) (by omega)

/-- `itot` at offset `off` of the payload agrees in two memories reading the same payload bytes,
once the item's header and length bytes fit in the payload. -/
theorem itot_off {M M' : MemSafe.Mem} {be : Bool} {P : BitVec 64} {N off : Nat}
    (hD : ∀ j, j < N → b8 M' be (P + BitVec.ofNat 64 j) = b8 M be (P + BitVec.ofNat 64 j))
    (hfit : off + (1 + llOf (b8 M be (P + BitVec.ofNat 64 off)).toNat) ≤ N) :
    itot M' be (P + BitVec.ofNat 64 off) = itot M be (P + BitVec.ofNat 64 off) := by
  refine itot_frame fun j hj => ?_
  rw [BitVec.add_assoc, ofNat_add_ofNat]
  exact hD _ (by omega)

/-! ## `rlp_list_count` -/

/-- The loop invariant of `rlp_list_count(P, N)` from entry memory `M0` and pointers `p`. -/
def CI (p : Ptrs) (M0 : MemSafe.Mem) (be : Bool) (P N : BitVec 64) (t : State σ) : Prop :=
  FF p M0 t ∧ t.be = be ∧ t.locals.lookup (nm "p") = some (.val (.word P)) ∧
    t.locals.lookup (nm "len") = some (.val (.word N)) ∧ ∃ C O : BitVec 64,
      t.locals.lookup (nm "count") = some (.val (.word C)) ∧
      t.locals.lookup (nm "off") = some (.val (.word O)) ∧ O.toNat = offs M0 be P C.toNat ∧
      O.toNat ≤ N.toNat ∧ Parsed M0 be P N.toNat C.toNat

theorem ci_restore {p : Ptrs} {M0 : MemSafe.Mem} {be : Bool} {P N : BitVec 64} {t : State σ}
    (old : Option (ValueHOL 64)) (h : CI p M0 be P N t) :
    CI p M0 be P N { t with locals := t.locals.resVarEq (nm "total", old) } := by
  obtain ⟨hff, hbe, h1, h2, C, O, h3, h4, h5, h6, h7⟩ := h
  exact ⟨ff_locals _ hff, hbe, by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h1,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2, C, O,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h4, h5, h6, h7⟩

theorem count_body (hC : X.code.lookup = guestCode) {p : Ptrs} {M0 : MemSafe.Mem} {be : Bool}
    {P N : BitVec 64} (hP : heapBase ≤ P.toNat) (hPN : P.toNat + N.toNat ≤ p.hp)
    (hhp : p.hp ≤ heapEnd) :
    Hoare σ X (fun t => CI p M0 be P N t ∧ CondTrue t countCond) countLoopBody
      (fun r t => r = none ∧ CI p M0 be P N t) := by
  intro s hs ⟨⟨hff, hbe, hpP, hlN, C, O, hcC, hoO, hO, hON, hpar⟩, hc⟩
  have hOlt := cond_lt (ev_lw hoO) (ev_lw hlN) hc
  refine (?_ : Hoare σ X (fun t => t = s) countLoopBody
    (fun r t => r = none ∧ CI p M0 be P N t)) s hs rfl
  unfold countLoopBody
  refine hoare_decCallS ((freshFoot_rlp_item_total hC).and
      ((funSpec_rlp_item_total_tot hC).and (funSpec_be _)))
    fun u _ hu vs hvs callee v st ⟨hR1, hR2, hbe'⟩ _ hsh => ?_
  subst u
  rw [evs_cons (ev_add2 (ev_lw hpP) (ev_lw hoO)) (evs_cons (ev_sub2 (ev_lw hlN) (ev_lw hoO))
    evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hcall := ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True)
    (vs := [.val (.word (P + O)), .val (.word (N - O))]) hff hR1 trivial
  obtain ⟨T, rfl, hT, h1, h2⟩ := hR2 v rfl _ _ rfl
  -- the total of the entry memory
  have hNO : (N - O).toNat = N.toNat - O.toNat := by bv_omega
  rw [hNO] at h2
  obtain ⟨-, -, -, -, hffw⟩ := id hff
  have hOe : O = BitVec.ofNat 64 (offs M0 be P C.toNat) := by rw [← hO]; simp
  have hbs : (callEntryStateHOLFinite s callee).be = be := hbe
  rw [hbs] at hT h1
  have hms : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
  rw [hms] at hT h1
  rw [hOe] at hT h1
  have hb0 : b8 s.memory be (P + BitVec.ofNat 64 (offs M0 be P C.toNat)) =
      b8 M0 be (P + BitVec.ofNat 64 (offs M0 be P C.toNat)) := by
    have := (data_eq (be := be) (M' := s.memory) (M := M0) (fun a ha => hffw a ha) hP hPN hhp)
      (offs M0 be P C.toNat) (by omega)
    exact this
  have hTe : T = itot M0 be (P + BitVec.ofNat 64 (offs M0 be P C.toNat)) := by
    rw [hT]
    refine itot_off (N := N.toNat) (fun j hj => data_eq (M' := s.memory) (M := M0) hffw hP hPN hhp j hj) ?_
    rw [hb0] at h1
    omega
  have hCle : C.toNat ≤ O.toNat := by rw [hO]; exact le_offs hpar _ le_rfl
  have hN64 : N.toNat < 2 ^ 64 := N.isLt
  set t1 := setVarHOLFinite (nm "total") (.val (.word T)) { st with locals := s.locals }
  have hff1 : FF p M0 t1 := ff_locals _ hcall.1
  refine hoare_conseq (P := fun t => t = t1) (Q := fun r t => r = none ∧ CI p M0 be P N t) ?_
    (fun _ _ h => h) (fun r t _ _ ⟨hr, hI⟩ => ⟨hr, ci_restore _ hI⟩)
  have hl1 : ∀ y, y ≠ nm "total" → t1.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hoO1 : t1.locals.lookup (nm "off") = some (.val (.word O)) := by
    rw [hl1 _ (by decide)]; exact hoO
  refine hoare_seq_eq (hoare_assign_eq (s0 := t1) (x := nm "off")
    (ev_add2 (ev_lw hoO1) (ev_lw (lk_set_self _ _ _)))) ?_
  have hcC1 : (setVarHOLFinite (nm "off") (.val (.word (O + T))) t1).locals.lookup (nm "count") =
      some (.val (.word C)) := by
    rw [lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hcC
  refine hoare_assign_fin (ev_add2 (ev_lw hcC1) (ev_cw _ 1)) ⟨rfl, ?_⟩
  have hOT : (O + T).toNat = O.toNat + T.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have hC1 : (C + BitVec.ofNat 64 1).toNat = C.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  refine ⟨ff_locals _ (ff_locals _ hff1), ?_, ?_, ?_, C + BitVec.ofNat 64 1, O + T, lk_set_self _ _ _,
    ?_, ?_, by omega, ?_⟩
  · show st.be = be
    rw [hbe']; exact hbe
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hpP
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hlN
  · rw [lk_set_ne _ _ (by decide), lk_set_self]
  · rw [hOT, hC1, offs, ← hTe, ← hO]
  · rw [hC1]
    refine parsed_snoc hpar (by omega) ?_ ?_
    · rw [← hTe, ← hb0]; exact h1
    · rw [offs, ← hTe, ← hO]; omega

/-- **`rlp_list_count(P, N)`** from a payload in allocated heap: the returned count `C` has
`Parsed M be P N C` for the entry memory. -/
theorem funSpec_rlp_list_count_parsed (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_list_count") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → ∀ P N : BitVec 64,
        vs = [.val (.word P), .val (.word N)] → heapBase ≤ P.toNat → P.toNat + N.toNat ≤ p.hp →
        ∃ C : BitVec 64, v = .val (.word C) ∧ Parsed s.memory s.be P N.toNat C.toNat) := by
  intro vs body callee rs hl s0 hs0 hloc r hr v hv p hp hord P N hvs hP hPN
  subst hv
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, -, -, hA, hB⟩ := lookupCode_two code_rlp_list_count (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hhp : p.hp ≤ heapEnd := hord.2.1
  suffices HH : Hoare σ X (fun t => t = s0) countBody (fun r _ => ∀ v, r = some (.returned v) →
      ∃ C : BitVec 64, v = .val (.word C) ∧ Parsed s0.memory s0.be P N.toNat C.toNat) by
    have := HH s0 hs0 rfl (by rw [hr]; trivial)
    rw [hr] at this
    exact this _ rfl
  unfold countBody
  refine hoare_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  rw [ev_cw] at hv1; cases hv1
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      ∃ C : BitVec 64, v = .val (.word C) ∧ Parsed s0.memory s0.be P N.toNat C.toNat) ?_
    (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2
  rw [ev_cw] at hv2; cases hv2
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      ∃ C : BitVec 64, v = .val (.word C) ∧ Parsed s0.memory s0.be P N.toNat C.toNat) ?_
    (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_seq (R := fun r t => r = none ∧ ∃ C : BitVec 64,
      t.locals.lookup (nm "count") = some (.val (.word C)) ∧
      Parsed s0.memory s0.be P N.toNat C.toNat) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (P := CI p s0.memory s0.be P N) ?_ fun t _ ht => ?_
    · refine hoare_while (fun _ h => h) (hoare_post (count_body hC hP hPN hhp)
        fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
          fun h => by subst hr; exact absurd h (by simp), fun v h => by subst hr; exact absurd h (by simp)⟩)
        fun t _ ⟨_, _, _, hlN', C, O, hcC, hoO, hO, hON, hpar⟩ hc => ⟨rfl, C, hcC, hpar⟩
    · subst ht
      refine ⟨ff_locals _ (ff_locals _ (ff_refl hp hord)), rfl, ?_, ?_, BitVec.ofNat 64 0,
        BitVec.ofNat 64 0, ?_, lk_set_self _ _ _, rfl, by simp, parsed_zero _ _ _ _⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hpP
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlN
      · rw [lk_set_ne _ _ (by decide), lk_set_self]
  · refine hoare_return fun t _ ⟨_, C, hcC, hpar⟩ w hw => fun w' hw' => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
    subst hw'
    rw [ev_lv, hcC] at hw
    cases hw
    exact ⟨C, rfl, hpar⟩

/-! ## `rlp_item_total_unchecked` writes nothing -/

def ituFns : EntryList :=
  [fnEntry Guest.Software.guestFn_rlp_item_total_unchecked, fnEntry Guest.Software.guestFn_rlp_read_length,
   fnEntry Guest.Software.guestFn_rlp_fail]

def ituNames : List MlS := ituFns.map Prod.fst

theorem ituFns_valid : ∀ e ∈ ituFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [ituFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 114) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 105) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ituFns_mw : ituFns.all (fun e => mwFreeB ituNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ituFns_gw_heap : ituFns.all (fun e => gwFreeB (nm "heap_ptr") ituNames e.2.2.1) = true := by
  decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ituFns_gw_frame :
    ituFns.all (fun e => gwFreeB (nm "frame_mem_ptr") ituNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ituFns_gw_scratch :
    ituFns.all (fun e => gwFreeB (nm "scratch_ptr") ituNames e.2.2.1) = true := by decide_cbv

theorem itu_mem : ituNames.contains (nm "rlp_item_total_unchecked") = true := by decide_cbv

theorem itu_mwClosed : MwClosed ituNames guestCode :=
  closed_of_entries (chk := mwFreeB) ituFns_valid ituFns_mw
theorem itu_gwClosed_heap : GwClosed (nm "heap_ptr") ituNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "heap_ptr")) ituFns_valid ituFns_gw_heap
theorem itu_gwClosed_frame : GwClosed (nm "frame_mem_ptr") ituNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) ituFns_valid ituFns_gw_frame
theorem itu_gwClosed_scratch : GwClosed (nm "scratch_ptr") ituNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) ituFns_valid ituFns_gw_scratch

/-- `rlp_item_total_unchecked` keeps memory and the allocator pointers. -/
theorem itu_keep (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_total_unchecked") (fun _ s _ t => t.memory = s.memory ∧
      ptrsOf t = ptrsOf s) := by
  have h0 := funSpec_mw (σ := σ) (X := X) (by rw [hC]; exact itu_mwClosed) itu_mem
  have h1 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact itu_gwClosed_heap) itu_mem
  have h2 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact itu_gwClosed_frame) itu_mem
  have h3 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact itu_gwClosed_scratch) itu_mem
  exact FunSpec.mono (((h0.and h1).and h2).and h3) fun _ _ _ _ ⟨⟨⟨m, e1⟩, e2⟩, e3⟩ =>
    ⟨m, ptrsOf_of_gl e1 e2 e3⟩

/-! ## `rlp_list_to_slices`: code -/

def slLoopBody : ProgHOL 64 :=
  .decCall (nm "total") .one (nm "rlp_item_total_unchecked") [.op .add [lv (nm "p"), lv (nm "off")]]
    (.seq (.store (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16]])
        (.op .add [lv (nm "p"), lv (nm "off")]))
      (.seq (.store (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16], cw 8]) (lv (nm "total")))
        (.seq (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "total")]))
          (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))))

def slCond : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "count"))

def slBody : ProgHOL 64 :=
  .decCall (nm "count") .one (nm "rlp_list_count") [lv (nm "p"), lv (nm "len")]
    (.decCall (nm "arr") .one (nm "alloc") [.panop .mul [lv (nm "count"), cw 16]]
      (.dec (nm "i") .one (cw 0) (.dec (nm "off") .one (cw 0)
        (.seq (.while slCond slLoopBody) (.return (.rstruct [lv (nm "arr"), lv (nm "count")]))))))

theorem entry_rlp_list_to_slices : fnEntry Guest.Software.guestFn_rlp_list_to_slices =
    (nm "rlp_list_to_slices", params_pl, slBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_list_to_slices :
    guestCode (nm "rlp_list_to_slices") = some (params_pl, slBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 115) (by decide)) ⟨_, rfl⟩
    entry_rlp_list_to_slices

/-! ## The re-parse loop -/

/-- The fixed facts of the re-parse loop: the payload `[P, P + N)` in the live heap of the entry
pointers `p`, `C` items parsed in the entry memory `M0`, the array `[Ar, Ar + 16 C)` fresh. -/
structure SFix (p q2 : Ptrs) (M0 : MemSafe.Mem) (be : Bool) (P N C Ar : BitVec 64) : Prop where
  hP : heapBase ≤ P.toNat
  hPN : P.toNat + N.toNat ≤ p.hp
  hhp : p.hp ≤ heapEnd
  par : Parsed M0 be P N.toNat C.toNat
  q2o : q2.Ordered
  mono : p.Mono q2
  arr2 : Ar.toNat + 16 * C.toNat ≤ q2.hp
  fresh : ∀ a, Ar.toNat ≤ a → a < Ar.toNat + 16 * C.toNat → ¬ p.Allocated a

/-- The loop invariant: slices `0 … I - 1` stored. -/
def SI (p q2 : Ptrs) (M0 : MemSafe.Mem) (be : Bool) (P C Ar : BitVec 64) (t : State σ) : Prop :=
  ptrsOf t = some q2 ∧ (∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat) ∧ t.be = be ∧
    t.locals.lookup (nm "p") = some (.val (.word P)) ∧
    t.locals.lookup (nm "count") = some (.val (.word C)) ∧
    t.locals.lookup (nm "arr") = some (.val (.word Ar)) ∧ ∃ I O : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧
      t.locals.lookup (nm "off") = some (.val (.word O)) ∧ I.toNat ≤ C.toNat ∧
      O.toNat = offs M0 be P I.toNat ∧ ∀ j, j < I.toNat →
        rd t.memory (Ar + BitVec.ofNat 64 (16 * j)) = P + BitVec.ofNat 64 (offs M0 be P j) ∧
        rd t.memory (Ar + BitVec.ofNat 64 (16 * j + 8)) = itot M0 be (P + BitVec.ofNat 64 (offs M0 be P j))

theorem si_restore {p q2 : Ptrs} {M0 : MemSafe.Mem} {be : Bool} {P C Ar : BitVec 64} {t : State σ}
    (old : Option (ValueHOL 64)) (h : SI p q2 M0 be P C Ar t) :
    SI p q2 M0 be P C Ar { t with locals := t.locals.resVarEq (nm "total", old) } := by
  obtain ⟨h0, h1, h2, h3, h4, h5, I, O, h6, h7, h8⟩ := h
  exact ⟨h0, h1, h2, by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h4,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h5, I, O,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h6,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h7, h8⟩

theorem ne_of_toNat_ne {a b : BitVec 64} (h : a.toNat ≠ b.toNat) : a ≠ b := fun e => h (by rw [e])

theorem sl_body (hC : X.code.lookup = guestCode) {p q2 : Ptrs} {M0 : MemSafe.Mem} {be : Bool}
    {P N C Ar : BitVec 64} (hF : SFix p q2 M0 be P N C Ar) :
    Hoare σ X (fun t => SI p q2 M0 be P C Ar t ∧ CondTrue t slCond) slLoopBody
      (fun r t => r = none ∧ SI p q2 M0 be P C Ar t) := by
  intro s hs ⟨⟨hq, hw, hbe, hpP, hcC, haA, I, O, hiI, hoO, hIC, hO, hsl⟩, hc⟩
  have hIlt := cond_lt (ev_lw hiI) (ev_lw hcC) hc
  have hpar := hF.par
  have hCN := parsed_le hpar
  have hhp := hF.hhp
  have hPN := hF.hPN
  have hq2 := hF.q2o.2.1
  have hA2 := hF.arr2
  obtain ⟨hk1, hk2, hk3⟩ := hpar I.toNat hIlt
  rw [offs] at hk3
  refine (?_ : Hoare σ X (fun t => t = s) slLoopBody
    (fun r t => r = none ∧ SI p q2 M0 be P C Ar t)) s hs rfl
  unfold slLoopBody
  refine hoare_decCallS ((funSpec_rlp_item_total_unchecked hC).and ((itu_keep hC).and (funSpec_be _)))
    fun u _ hu vs hvs callee v st ⟨hR, ⟨hm, hpt⟩, hbe'⟩ _ _ => ?_
  subst u
  rw [evs_cons (ev_add2 (ev_lw hpP) (ev_lw hoO)) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hv := hR v rfl _ rfl
  subst hv
  have hOe : O = BitVec.ofNat 64 (offs M0 be P I.toNat) := by rw [← hO]; simp
  set Q0 := offs M0 be P I.toNat with hQ0
  set T := itot (callEntryStateHOLFinite s callee).memory (callEntryStateHOLFinite s callee).be
    (P + O) with hTd
  have hTe : T = itot M0 be (P + BitVec.ofNat 64 Q0) := by
    rw [hTd, hOe]
    show itot s.memory s.be _ = _
    rw [hbe]
    exact itot_off (N := N.toNat) (data_eq hw hF.hP hPN hhp) (by omega)
  have hTn : Q0 + T.toNat = offs M0 be P (I.toNat + 1) := by rw [offs, hTe]
  -- the two stored cells
  have hA64 : Ar.toNat + 16 * C.toNat < 2 ^ 64 := by unfold heapEnd at hq2; omega
  set a1 := Ar + BitVec.ofNat 64 (16 * I.toNat) with ha1
  set a2 := Ar + BitVec.ofNat 64 (16 * I.toNat + 8) with ha2
  have ha1n : a1.toNat = Ar.toNat + 16 * I.toNat := toNat_add_lt (by omega)
  have ha2n : a2.toNat = Ar.toNat + (16 * I.toNat + 8) := toNat_add_lt (by omega)
  have hev1 : Ar + I * BitVec.ofNat 64 16 = a1 := by
    rw [ha1]; congr 1; apply BitVec.eq_of_toNat_eq
    simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
  have hev2 : Ar + (I * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = a2 := by
    rw [ha2]; congr 1; apply BitVec.eq_of_toNat_eq
    simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
  set t1 := setVarHOLFinite (nm "total") (.val (.word T)) { st with locals := s.locals } with ht1
  refine hoare_conseq (P := fun t => t = t1) (Q := fun r t => r = none ∧ SI p q2 M0 be P C Ar t) ?_
    (fun _ _ h => h) (fun r t _ _ ⟨hr, hI⟩ => ⟨hr, si_restore _ hI⟩)
  have hl1 : ∀ y, y ≠ nm "total" → t1.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hm1 : t1.memory = s.memory := hm
  have hTl : t1.locals.lookup (nm "total") = some (.val (.word T)) := lk_set_self _ _ _
  have hA1 : ev t1 (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16]]) =
      some (.val (.word a1)) := by
    rw [ev_add2 (ev_lw (by rw [hl1 _ (by decide)]; exact haA))
      (ev_mul2 (ev_lw (by rw [hl1 _ (by decide)]; exact hiI)) (ev_cw _ 16)), hev1]
  have hV1 : ev t1 (.op .add [lv (nm "p"), lv (nm "off")]) = some (.val (.word (P + O))) :=
    ev_add2 (ev_lw (by rw [hl1 _ (by decide)]; exact hpP)) (ev_lw (by rw [hl1 _ (by decide)]; exact hoO))
  refine hoare_seq_eq (hoare_store_eq hA1 hV1) ?_
  set t2 := { t1 with memory := upd t1.memory a1 (.word (P + O)) } with ht2
  have hA2' : ev t2 (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16], cw 8]) =
      some (.val (.word a2)) := by
    rw [ev_add3 (ev_lw (by rw [show t2.locals = t1.locals from rfl, hl1 _ (by decide)]; exact haA))
      (ev_mul2 (ev_lw (by rw [show t2.locals = t1.locals from rfl, hl1 _ (by decide)]; exact hiI))
        (ev_cw _ 16)) (ev_cw _ 8), hev2]
  refine hoare_seq_eq (hoare_store_eq hA2' (ev_lw (show t2.locals.lookup (nm "total") = _ from hTl))) ?_
  set t3 := { t2 with memory := upd t2.memory a2 (.word T) } with ht3
  have hoO3 : t3.locals.lookup (nm "off") = some (.val (.word O)) := by
    rw [show t3.locals = t1.locals from rfl, hl1 _ (by decide)]; exact hoO
  refine hoare_seq_eq (hoare_assign_eq (s0 := t3) (x := nm "off")
    (ev_add2 (ev_lw hoO3) (ev_lw (show t3.locals.lookup (nm "total") = _ from hTl)))) ?_
  have hiI4 : (setVarHOLFinite (nm "off") (.val (.word (O + T))) t3).locals.lookup (nm "i") =
      some (.val (.word I)) := by
    rw [lk_set_ne _ _ (by decide), show t3.locals = t1.locals from rfl, hl1 _ (by decide)]; exact hiI
  refine hoare_assign_fin (ev_add2 (ev_lw hiI4) (ev_cw _ 1)) ⟨rfl, ?_⟩
  -- the invariant after the iteration
  have hm3 : t3.memory = upd (upd s.memory a1 (.word (P + O))) a2 (.word T) := by
    rw [ht3, ht2]; dsimp only; rw [hm1]
  have hTN : O.toNat + T.toNat ≤ N.toNat := by rw [hO, hTe]; exact hk3
  have hN64 := N.isLt
  have hOT : (O + T).toNat = O.toNat + T.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hne12 : a1 ≠ a2 := ne_of_toNat_ne (by omega)
  refine ⟨?_, fun a ha => ?_, ?_, ?_, ?_, ?_, I + BitVec.ofNat 64 1, O + T, lk_set_self _ _ _, ?_,
    by omega, by rw [hOT, hO, hTn, hI1], fun j hj => ?_⟩
  · show ptrsOf t3 = some q2
    rw [← hq]; exact (ptrsOf_frame rfl).trans hpt
  · change t3.memory a ≠ M0 a at ha
    rw [hm3] at ha
    by_cases e2 : a = a2
    · subst e2; rw [ha2n]; exact hF.fresh _ (by omega) (by omega)
    by_cases e1 : a = a1
    · subst e1; rw [ha1n]; exact hF.fresh _ (by omega) (by omega)
    rw [upd_out e2, upd_out e1] at ha
    exact hw a ha
  · show st.be = be
    rw [hbe']; exact hbe
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), show t3.locals = t1.locals from rfl,
      hl1 _ (by decide)]; exact hpP
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), show t3.locals = t1.locals from rfl,
      hl1 _ (by decide)]; exact hcC
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), show t3.locals = t1.locals from rfl,
      hl1 _ (by decide)]; exact haA
  · rw [lk_set_ne _ _ (by decide), lk_set_self]
  · show rd t3.memory _ = _ ∧ rd t3.memory _ = _
    rw [hm3]
    rw [hI1] at hj
    have hb1 : (Ar + BitVec.ofNat 64 (16 * j)).toNat = Ar.toNat + 16 * j := toNat_add_lt (by omega)
    have hb2 : (Ar + BitVec.ofNat 64 (16 * j + 8)).toNat = Ar.toNat + (16 * j + 8) :=
      toNat_add_lt (by omega)
    by_cases ej : j = I.toNat
    · subst ej
      refine ⟨?_, ?_⟩
      · rw [rd_upd, if_neg (show a1 ≠ a2 from hne12), rd_upd, if_pos rfl, hOe]
      · rw [rd_upd, if_pos rfl, hTe]
    · have hjI : j < I.toNat := by omega
      obtain ⟨e1, e2⟩ := hsl j hjI
      refine ⟨?_, ?_⟩
      · rw [rd_upd, if_neg (ne_of_toNat_ne (by rw [hb1, ha2n]; omega)), rd_upd,
          if_neg (ne_of_toNat_ne (by rw [hb1, ha1n]; omega))]; exact e1
      · rw [rd_upd, if_neg (ne_of_toNat_ne (by rw [hb2, ha2n]; omega)), rd_upd,
          if_neg (ne_of_toNat_ne (by rw [hb2, ha1n]; omega))]; exact e2

theorem sl_loop (hC : X.code.lookup = guestCode) {p q2 : Ptrs} {M0 : MemSafe.Mem} {be : Bool}
    {P N C Ar : BitVec 64} (hF : SFix p q2 M0 be P N C Ar) :
    Hoare σ X (SI p q2 M0 be P C Ar) (.while slCond slLoopBody)
      (fun r t => r = none ∧ SI p q2 M0 be P C Ar t ∧ ∃ I : BitVec 64,
        t.locals.lookup (nm "i") = some (.val (.word I)) ∧ C.toNat ≤ I.toNat) :=
  hoare_while (fun _ h => h) (hoare_post (sl_body hC hF)
    fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
      fun h => by subst hr; exact absurd h (by simp), fun v h => by subst hr; exact absurd h (by simp)⟩)
    fun t _ hI hc => by
      obtain ⟨_, _, _, _, hcC, _, I, O, hiI, _⟩ := id hI
      exact ⟨rfl, hI, I, hiI, cond_ge (ev_lw hiI) (ev_lw hcC) hc⟩

/-- **`rlp_list_to_slices`**: from a payload `[P, P + N)` in allocated heap, a fresh array of
slices that all lie inside the payload. -/
theorem freshFoot_rlp_list_to_slices (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_list_to_slices") SlPre SlQ := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, -, -, hA, hB⟩ := lookupCode_two code_rlp_list_to_slices (by decide) hl
  obtain ⟨P, N, hvs, hP, p1, hp1, hPN⟩ := hpre
  rw [hp] at hp1; cases hp1
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hhp : p.hp ≤ heapEnd := hord.2.1
  unfold slBody
  -- `count = rlp_list_count(p, len)`
  refine hoare_decCallL ((freshFoot_rlp_list_count hC).and
      ((funSpec_rlp_list_count_parsed hC).and (funSpec_be _))) fpost_locals
    fun s _ hs vs hvs callee v st ⟨hR1, hR2, hbe1⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlN) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hcall := ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True)
    (vs := [.val (.word P), .val (.word N)]) (ff_refl hp hord) hR1 trivial
  obtain ⟨C, rfl, hpar⟩ := hR2 _ rfl p hp hord P N rfl hP hPN
  change Parsed s0.memory s0.be P N.toNat C.toNat at hpar
  have hCN := parsed_le hpar
  obtain ⟨q1, hq1, ho1, hm1, hw1⟩ := hcall.1
  set t1 := setVarHOLFinite (nm "count") (.val (.word C)) { st with locals := s0.locals } with ht1
  have hcl1 : t1.locals.lookup (nm "count") = some (.val (.word C)) := lk_set_self _ _ _
  have hpt1 : ptrsOf t1 = some q1 := (ptrsOf_frame rfl).trans hq1
  -- `arr = alloc(count * 16)`
  refine hoare_decCallL ((MemSafe.allocSpec_alloc hC).and (funSpec_be _)) fpost_locals
    fun s _ hs avs havs callee' v st2 ⟨hR, hbe2⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_mul2 (ev_lw hcl1) (ev_cw _ 16)) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  have hC16 : (C * BitVec.ofNat 64 16).toNat = 16 * C.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 16 < 2 ^ 64),
      Nat.mod_eq_of_lt (by unfold heapEnd at hhp; omega)]
    omega
  obtain ⟨hm2, -, q2, hq2, ho2, hmono2, hv2⟩ := hR (by simp [Good]) _ q1 rfl hpt1 ho1
  obtain ⟨Ar, rfl, -, ⟨hAr1, hAr2⟩, hfree⟩ := hv2 _ rfl
  rw [hC16] at hAr2 hfree
  have hF : SFix p q2 s0.memory s0.be P N C Ar :=
    ⟨hP, hPN, hhp, hpar, ho2, mono_trans' hm1 hmono2, hAr2,
      fun a h1 h2 => not_alloc_of_mono hm1 (hfree a h1 h2)⟩
  set t2 := setVarHOLFinite (nm "arr") (.val (.word Ar)) { st2 with locals := t1.locals } with ht2
  -- `var i = 0; var off = 0`
  refine hoare_decL fpost_locals fun s _ hs vi hvi _ => ?_
  subst s
  rw [ev_cw] at hvi; cases hvi
  refine hoare_decL fpost_locals fun s _ hs vo hvo _ => ?_
  subst s
  rw [ev_cw] at hvo; cases hvo
  set t3 := setVarHOLFinite (nm "off") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) t2) with ht3
  have hl3 : ∀ y, y ≠ nm "off" → y ≠ nm "i" → y ≠ nm "arr" →
      t3.locals.lookup y = t1.locals.lookup y := fun y a b c => by
    rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b), lk_set_ne _ _ (Ne.symm c)]
  have hSI : SI p q2 s0.memory s0.be P C Ar t3 := by
    refine ⟨(ptrsOf_frame rfl).trans hq2,
      fun a ha => hw1 a (fun e => ha (by change st2.memory a = _; rw [hm2]; exact e)), ?_, ?_, ?_, ?_,
      BitVec.ofNat 64 0, BitVec.ofNat 64 0, ?_, lk_set_self _ _ _, by simp, rfl,
      fun j hj => absurd hj (by simp)⟩
    · show st2.be = s0.be
      rw [hbe2]; show st.be = s0.be; rw [hbe1]; rfl
    · rw [hl3 _ (by decide) (by decide) (by decide), lk_set_ne _ _ (by decide)]; try exact hpP
    · rw [hl3 _ (by decide) (by decide) (by decide)]; exact hcl1
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide), lk_set_self]
  refine hoare_seq (R := fun r t => r = none ∧ SI p q2 s0.memory s0.be P C Ar t ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ C.toNat ≤ I.toNat) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (sl_loop hC hF) fun t _ ht => by subst ht; exact hSI
  -- `return <arr, count>`
  refine hoare_return fun t _ ⟨_, hI, I', hiI', hCI⟩ w hw => ?_
  obtain ⟨hq, hw', hbe, _, hcC, haA, I, O, hiI, _, hIC, _, hsl⟩ := hI
  rw [hiI] at hiI'
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hiI'
  subst hiI'
  rw [ev_rstruct (evs_cons (ev_lw haA) (evs_cons (ev_lw hcC) evs_nil))] at hw
  cases hw
  have hIe : I.toNat = C.toNat := by omega
  refine fpost_of_ff ⟨q2, hq, ho2, mono_trans' hm1 hmono2, hw'⟩ fun p' hp' => ?_
  rw [show ptrsOf (emptyLocalsHOLFinite t) = ptrsOf t from rfl, hq] at hp'
  cases hp'
  intro arr cnt hv
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv
  obtain ⟨rfl, rfl⟩ := hv
  refine ⟨fun h0 => ?_, hAr2, fun P' N' hvs j hj => ?_⟩
  · have := alloc_start hAr1 (by omega) hfree
    have := hm1.1
    omega
  · simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    obtain ⟨e1, e2⟩ := hsl j (by omega)
    obtain ⟨k1, -, k3⟩ := hpar j (by omega)
    rw [offs] at k3
    have hP64 : P.toNat + N.toNat < 2 ^ 64 := by unfold heapEnd at hhp; omega
    have hpo : (P + BitVec.ofNat 64 (offs s0.memory s0.be P j)).toNat =
        P.toNat + offs s0.memory s0.be P j := toNat_add_lt (by omega)
    show P.toNat ≤ (rd (emptyLocalsHOLFinite t).memory _).toNat ∧
      (rd (emptyLocalsHOLFinite t).memory _).toNat + (rd (emptyLocalsHOLFinite t).memory _).toNat ≤ _
    rw [show (emptyLocalsHOLFinite t).memory = t.memory from rfl, e1, e2, hpo]
    omega

/-! ## The decode bound with every leaf discharged -/

/-- **`_decode_witness_node_body`** under `DecPre NdbW` (the witness slice and the node DB located
in the heap below `H`): every callee footprint discharged; only `AlignedDom X` (for
`node_new_branch`) and the table cost bounds remain. -/
theorem decode_witness_node_body_costP_final (hC : X.code.lookup = guestCode)
    (hA : MemSafe.Helpers.AlignedDom X) {Bds Brs Bri Bnx Bf : Nat}
    (hds : CalleeCost σ X (nm "_decode_step") Bds) (hrs : CalleeCost σ X (nm "_resolve_step") Brs)
    (hri : CalleeCost σ X (nm "rlp_item") Bri) (hnx : CalleeCost σ X (nm "node_new_ext") Bnx)
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) :
    Inv.CalleeCostP σ X (nm "_decode_witness_node_body") (DecPre NdbW) (decB Bds Brs Bri Bnx Bf) :=
  decode_witness_node_body_costP_leaves hC hA (freshFoot_rlp_list_to_slices hC) hds hrs hri hnx hf

end InitECandidate.Solver.Spec.Mpt.Leaves
