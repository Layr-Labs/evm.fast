import InitECandidate.Solver.Band4.K2n
import InitECandidate.Solver.MemSafe.MptH.Key
import InitECandidate.Solver.Spec.Mpt.Leaves.FinKeccak
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# `mpt_nibble_key` returns a fresh nibble buffer (trie-inv)

```
fun {1,1} mpt_nibble_key(1 m, 1 key, 1 klen) {
  if (lds 1 (m + 8)) != 0 {
    keccak256(key, klen, mpt_hash_scratch);
    var 1 nb = alloc(64); key_to_nibbles(mpt_hash_scratch, 32, nb); return <nb, 64>; }
  var 1 nb2 = alloc(2 * klen); key_to_nibbles(key, klen, nb2); return <nb2, 2 * klen>; }
```

**`ret_mpt_nibble_key`**: from an ordered allocator, `2 klen < 2^64`, the keccak globals in shape
(`KOK`) and `mpt_hash_scratch + 32 < 2^64`, a return `<nb, L>` has `nb` 8-aligned, `heapBase ≤ nb`,
`nb + L ≤ heapEnd`, `L = 64` when the secured flag `rd (m + 8)` is set and `L = 2 klen` otherwise,
and every byte of `[nb, nb + L)` is a nibble at the entry byte order (`MnkRet`).

**`keyNib_of_mnkRet`**: when `L mod 8 = 0` this is `Spec.Mpt.KeyNib t.memory nb L 0` (for every
byte order, as `KeyNib` demands: the mirror of a byte of an aligned full word is in the buffer).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.Band4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf gword heapBase heapEnd AllocOK rd)
open InitECandidate.Solver.MemSafe.MptH (mnkBody mnkPs code_mpt_nibble_key)

variable {σ : Type}

/-- What a returning `mpt_nibble_key(M, _, KL)` gives, from entry `s` to exit `t`. -/
def MnkRet (s t : State σ) (M KL : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ nb L : BitVec 64, v = .rStruct [.val (.word nb), .val (.word L)] ∧ t.be = s.be ∧
    nb.toNat % 8 = 0 ∧ heapBase ≤ nb.toNat ∧ nb.toNat + L.toNat ≤ heapEnd ∧
    (rd s.memory (M + BitVec.ofNat 64 8) ≠ 0 → L.toNat = 64) ∧
    (rd s.memory (M + BitVec.ofNat 64 8) = 0 → L.toNat = 2 * KL.toNat) ∧
    NibOK t.memory s.be nb L.toNat

/-- The entry facts `ret_mpt_nibble_key` needs (all follow from `G`). -/
def MnkIn (s : State σ) (KL : BitVec 64) : Prop :=
  AllocOK s ∧ 2 * KL.toNat < 2 ^ 64 ∧ (∃ ks kp, Mpt.Leaves.KOK s ks kp) ∧
    ∃ hs : BitVec 64, gword s (nm "mpt_hash_scratch") = some hs ∧ hs.toNat + 32 < 2 ^ 64

theorem mnk_gword_lookup {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    s.globals.lookup g = some (.val (.word w)) := by
  unfold gword at h
  split at h
  · cases h; assumption
  · cases h

theorem mnk_ev_glob {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    ev s (.var .global g) = some (.val (.word w)) := mnk_gword_lookup h

theorem mnk_good_ret (v : ValueHOL 64) : Good (some (PanSemResultExact.returned v : PanSemResultExact 64)) := by
  simp [Good]

/-- `alloc(n)` from an ordered allocator: a fresh heap block below `heapEnd`, globals other than
`heap_ptr` and the memory kept. -/
theorem mnk_alloc {s t : State σ} {n : BitVec 64} {v : ValueHOL 64} {p : Ptrs}
    (hA : MemSafe.AllocSpec σ guestCtx (nm "alloc") .heap) (hp : ptrsOf s = some p) (hord : p.Ordered)
    {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : lookupCodeHOLFinite guestCtx.code.lookup (nm "alloc") [.val (.word n)] = some (body, callee, rs))
    (hs : InCtx s guestCtx) (hloc : s.locals = callee)
    (hr : evaluateHOLFiniteState s body = (some (.returned v), t)) :
    t.memory = s.memory ∧ (∀ g, g ≠ MemSafe.gHeap → t.globals.lookup g = s.globals.lookup g) ∧
      ∃ q : BitVec 64, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧ heapBase ≤ q.toNat ∧
        q.toNat + n.toNat ≤ heapEnd := by
  have h := hA _ body callee rs hl s hs hloc (.returned v) (by rw [hr])
  rw [hr] at h
  obtain ⟨hm, hg, p', hp', hord', -, hret⟩ := h (mnk_good_ret v) n p rfl hp hord
  obtain ⟨q, rfl, hq8, ⟨hq1, hq2⟩, -⟩ := hret v rfl
  exact ⟨hm, hg, q, rfl, hq8, hq1, by have := hord'.2.1; omega⟩

/-! ## The return spec -/

theorem mnk_rstruct {u : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev u a = some (.val (.word x))) (hb : ev u b = some (.val (.word y))) :
    ev u (.rstruct [a, b]) = some (.rStruct [.val (.word x), .val (.word y)]) :=
  ev_rstruct (evs_cons ha (evs_cons hb evs_nil))

theorem mnk_ld_m8 {u : State σ} {M x : BitVec 64}
    (hm : u.locals.lookup (nm "m") = some (.val (.word M)))
    (hx : ev u (.load .one (.op .add [lv (nm "m"), cw 8])) = some (.val (.word x))) :
    x = rd u.memory (M + BitVec.ofNat 64 8) := by
  obtain ⟨w, hw, -, hv⟩ := MemSafe.Struct.ev_load1_inv hx
  rw [ev_add2 (ev_lw hm) (ev_cw _ 8)] at hw
  cases hw
  cases hv
  rfl

theorem mnk_ptrs {s t : State σ} (hg : t.globals = s.globals) : ptrsOf t = ptrsOf s := by
  unfold ptrsOf MemSafe.gword; rw [hg]

/-- The tail `key_to_nibbles(src, n, nb); return <nb, len>`. -/
theorem mnk_tail {be : Bool} {nbN : MlS} {src nE lE : ExpHOL 64} {q S N L : BitVec 64}
    (hqN : q.toNat + 2 * N.toNat < 2 ^ 64) {P : PanSemStateFiniteExact 64 σ → Prop}
    (hP : ∀ t, P t → t.locals.lookup nbN = some (.val (.word q)) ∧ t.be = be ∧
      ev t src = some (.val (.word S)) ∧ ev t nE = some (.val (.word N)) ∧
      (∀ t' : PanSemStateFiniteExact 64 σ, t'.locals = t.locals → ev t' lE = some (.val (.word L))))
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (hQ : ∀ t : PanSemStateFiniteExact 64 σ, t.be = be → NibOK t.memory be q (2 * N.toNat) →
      Q (some (.returned (.rStruct [.val (.word q), .val (.word L)]))) t) :
    Hoare σ guestCtx P (.seq (callD (nm "key_to_nibbles") [src, nE, lv nbN])
      (.return (.rstruct [lv nbN, lE]))) Q := by
  refine Spec.Inv.hseq (R := fun t => t.locals.lookup nbN = some (.val (.word q)) ∧ t.be = be ∧
    NibOK t.memory be q (2 * N.toNat) ∧
    (∀ t' : PanSemStateFiniteExact 64 σ, t'.locals = t.locals → ev t' lE = some (.val (.word L))))
    ?_ ?_
  · refine hoare_callD ((ret_key_to_nibbles (σ := σ) guestCtx_code).and (MemSafe.funSpec_be' _))
      fun s _ hs vs hvs callee v' st ⟨hR, hbe⟩ _ => ?_
    obtain ⟨hnb, hsbe, hsrc, hnE, hlE⟩ := hP s hs
    rw [evs_cons hsrc (evs_cons hnE (evs_cons (ev_lw hnb) evs_nil))] at hvs
    cases hvs
    obtain ⟨-, hnib⟩ := hR S N q rfl hqN v' rfl
    have hbe' : st.be = be := hbe.trans hsbe
    refine ⟨rfl, hnb, hbe', ?_, hlE⟩
    show NibOK st.memory be q (2 * N.toNat)
    rw [← hsbe]
    exact hnib
  · refine hoare_return fun t _ ⟨hnb, hbe, hnib, hlE⟩ v hv => ?_
    rw [mnk_rstruct (ev_lw hnb) (hlE t rfl)] at hv
    cases hv
    exact hQ _ hbe hnib

/-- The plain-branch entry state (after the `if`): unchanged, flag clear. -/
abbrev MnkR0 (s0 : State σ) (M : BitVec 64) (t : State σ) : Prop :=
  t.locals = s0.locals ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
    rd s0.memory (M + BitVec.ofNat 64 8) = 0

abbrev MnkQ (s0 : State σ) (M KL : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → MnkRet s0 t M KL v

abbrev MnkQ' (s0 : State σ) (M KL : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → MnkR0 s0 M t) ∧ MnkQ s0 M KL r t

/-- **`mpt_nibble_key`'s return.** -/
theorem ret_mpt_nibble_key :
    FunSpec σ guestCtx (nm "mpt_nibble_key") (fun vs s r t => ∀ M K KL : BitVec 64,
      vs = [.val (.word M), .val (.word K), .val (.word KL)] → MnkIn s KL →
      ∀ v, r = .returned v → MnkRet s t M KL v) := by
  intro vs body callee rs hl s0 hs0 hloc r hr M K KL hvs hin v hv
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    Spec.Inv.lookupCode_three_full code_mpt_nibble_key (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  obtain ⟨⟨p0, hp0, hord0⟩, hKL, ⟨ks, kp, hK⟩, hsw, hgs, hsw32⟩ := hin
  have hm : s0.locals.lookup (nm "m") = some (.val (.word M)) := by rw [hloc]; exact hA
  have hk : s0.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hloc]; exact hB
  have hkl : s0.locals.lookup (nm "klen") = some (.val (.word KL)) := by rw [hloc]; exact hC'
  have hAl := MemSafe.allocSpec_alloc (σ := σ) (X := guestCtx) guestCtx_code
  have hKec := Mpt.Leaves.ret_keccak256 (σ := σ) guestCtx_code
    MemSafe.Helpers.alignedDom_guestCtx Mpt.Leaves.domTop_guestCtx
  have h2KL : (BitVec.ofNat 64 2 * KL).toNat = 2 * KL.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat]
    exact Nat.mod_eq_of_lt (by omega)
  have h64 : (BitVec.ofNat 64 64).toNat = 64 := by rw [BitVec.toNat_ofNat]
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := by rw [BitVec.toNat_ofNat]
  have hE : heapEnd = 2952790016 := rfl
  -- `alloc(n)` from a state with the entry globals
  have alloc_ret : ∀ (s : PanSemStateFiniteExact 64 σ) (n : BitVec 64), s.globals = s0.globals →
      ∀ callee' v' (st : PanSemStateFiniteExact 64 σ),
      (fun vs s r t => Good (some r) → ∀ n p, vs = [ValueHOL.val (.word n)] →
        ptrsOf s = some p → p.Ordered →
          t.memory = s.memory ∧ (∀ g, g ≠ MemSafe.Region.global .heap →
            t.globals.lookup g = s.globals.lookup g) ∧
          ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
            ∀ v, r = .returned v → ∃ q : BitVec 64, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
              MemSafe.Region.Live p' .heap q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a →
                a < q.toNat + n.toNat → ¬ p.Allocated a)
        [ValueHOL.val (.word n)] (callEntryStateHOLFinite s callee') (.returned v') st →
      (∀ g, g ≠ MemSafe.gHeap → st.globals.lookup g = s0.globals.lookup g) ∧
        ∃ q : BitVec 64, v' = .val (.word q) ∧ q.toNat % 8 = 0 ∧ heapBase ≤ q.toNat ∧
          q.toNat + n.toNat ≤ heapEnd := by
    intro s n hsg callee' v' st hR
    have hpS : ptrsOf (callEntryStateHOLFinite s callee') = some p0 := by
      rw [mnk_ptrs (t := callEntryStateHOLFinite s callee') (s := s0) hsg]; exact hp0
    obtain ⟨-, hglob, p', -, hord', -, hret⟩ := hR (mnk_good_ret v') n p0 rfl hpS hord0
    obtain ⟨q, rfl, hq8, ⟨hq1, hq2⟩, -⟩ := hret v' rfl
    refine ⟨fun g hg => (hglob g hg).trans (by rw [← hsg]; rfl), q, rfl, hq8, hq1, ?_⟩
    have := hord'.2.1
    omega
  -- the secured branch
  have H_then : rd s0.memory (M + BitVec.ofNat 64 8) ≠ 0 → Hoare σ guestCtx (fun u => u = s0)
      (.seq (callD (nm "keccak256") [lv (nm "key"), lv (nm "klen"),
          .var .global (nm "mpt_hash_scratch")])
        (.decCall (nm "nb") .one (nm "alloc") [cw 64]
          (.seq (callD (nm "key_to_nibbles")
              [.var .global (nm "mpt_hash_scratch"), cw 32, lv (nm "nb")])
            (.return (.rstruct [lv (nm "nb"), cw 64]))))) (MnkQ' s0 M KL) := by
    intro hS
    refine Spec.Inv.hseq (R := fun t => t.locals = s0.locals ∧ t.globals = s0.globals ∧
      t.be = s0.be) ?_ ?_
    · refine hoare_callD (hKec.and (MemSafe.funSpec_be' _))
        fun s _ hs vs hvs callee' v' st ⟨hR, hbe⟩ _ => ?_
      subst hs
      rw [evs_cons (ev_lw hk) (evs_cons (ev_lw hkl) (evs_cons (mnk_ev_glob hgs) evs_nil))] at hvs
      cases hvs
      have hBW := hR v' rfl K KL hsw ks kp rfl hK (by omega)
      exact ⟨rfl, rfl, hBW.1, hbe⟩
    · refine hoare_decCallS (hAl.and (MemSafe.funSpec_be' _))
        fun s _ ⟨hsl, hsg, hsb⟩ vs hvs callee' v' st ⟨hR, hbe⟩ _ _ => ?_
      rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
      cases hvs
      obtain ⟨hglob, q, rfl, hq8, hq1, hq2⟩ := alloc_ret s _ hsg callee' v' st hR
      rw [h64] at hq2
      refine hoare_pre (mnk_tail (be := s0.be) (S := hsw) (N := BitVec.ofNat 64 32)
        (L := BitVec.ofNat 64 64) (q := q) (by rw [h32]; rw [hE] at hq2; omega) (P := fun t => t =
          setVarHOLFinite (nm "nb") (.val (.word q)) { st with locals := s.locals }) ?_ ?_)
        (fun t _ ht => ht)
      · intro t ht
        subst ht
        refine ⟨lk_set_self _ _ _, hbe.trans hsb, ?_, ev_cw _ 32, fun t' _ => ev_cw _ 64⟩
        show (setVarHOLFinite (nm "nb") (.val (.word q)) { st with locals := s.locals }).globals.lookup
          (nm "mpt_hash_scratch") = _
        rw [show (setVarHOLFinite (nm "nb") (.val (.word q)) { st with locals := s.locals }).globals =
          st.globals from rfl, hglob _ (by decide)]
        exact mnk_gword_lookup hgs
      · intro t hbt hnib
        refine And.intro (fun h => nomatch h) (fun v hv => ?_)
        cases hv
        refine ⟨q, BitVec.ofNat 64 64, rfl, hbt, hq8, hq1, by rw [h64]; omega,
          fun _ => h64, fun h => absurd h hS, ?_⟩
        rw [h64]
        rw [h32] at hnib
        exact hnib
  -- the plain branch
  have H_else : Hoare σ guestCtx (MnkR0 s0 M)
      (.decCall (nm "nb2") .one (nm "alloc") [.panop .mul [cw 2, lv (nm "klen")]]
        (.seq (callD (nm "key_to_nibbles") [lv (nm "key"), lv (nm "klen"), lv (nm "nb2")])
          (.return (.rstruct [lv (nm "nb2"), .panop .mul [cw 2, lv (nm "klen")]])))) (MnkQ s0 M KL) := by
    refine hoare_decCallS (hAl.and (MemSafe.funSpec_be' _))
      fun s _ ⟨hsl, hsm, hsg, hsb, hS⟩ vs hvs callee' v' st ⟨hR, hbe⟩ _ _ => ?_
    have hkl' : s.locals.lookup (nm "klen") = some (.val (.word KL)) := by rw [hsl]; exact hkl
    have hk' : s.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hsl]; exact hk
    rw [evs_cons (ev_mul2 (ev_cw _ 2) (ev_lw hkl')) evs_nil] at hvs
    cases hvs
    obtain ⟨-, q, rfl, hq8, hq1, hq2⟩ := alloc_ret s _ hsg callee' v' st hR
    rw [h2KL] at hq2
    refine hoare_pre (mnk_tail (be := s0.be) (S := K) (N := KL) (L := BitVec.ofNat 64 2 * KL)
      (q := q) (by rw [hE] at hq2; omega) (P := fun t => t =
        setVarHOLFinite (nm "nb2") (.val (.word q)) { st with locals := s.locals }) ?_ ?_)
      (fun t _ ht => ht)
    · intro t ht
      subst ht
      have e1 : ∀ x, x ≠ nm "nb2" → (setVarHOLFinite (nm "nb2") (.val (.word q))
          { st with locals := s.locals }).locals.lookup x = s.locals.lookup x :=
        fun x hx => lk_set_ne _ _ (Ne.symm hx)
      refine ⟨lk_set_self _ _ _, hbe.trans hsb, ev_lw (by rw [e1 _ (by decide)]; exact hk'),
        ev_lw (by rw [e1 _ (by decide)]; exact hkl'), fun t' ht' => ?_⟩
      exact ev_mul2 (ev_cw _ 2) (ev_lw (by rw [ht', e1 _ (by decide)]; exact hkl'))
    · intro t hbt hnib v hv
      cases hv
      refine ⟨q, BitVec.ofNat 64 2 * KL, rfl, hbt, hq8, hq1, by rw [h2KL]; omega,
        fun h => absurd hS h, fun _ => h2KL, ?_⟩
      rw [h2KL]
      exact hnib
  have H : Hoare σ guestCtx (fun u => u = s0) mnkBody (MnkQ s0 M KL) := by
    unfold mnkBody
    refine hoare_seq (R := MnkQ' s0 M KL) ?_ (fun r t _ _ _ h => h.2) (hoare_pre H_else (fun t _ h => h.1 rfl))
    refine hoare_ite (fun u hu ⟨hu0, w, hw, hw0⟩ ht => ?_) (hoare_skip fun u _ ⟨hu0, hc⟩ => ?_)
    · have e := hu0.symm
      subst e
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      have hxv := mnk_ld_m8 hm hx
      rw [ev_cw] at hy
      cases hy
      have hS : rd s0.memory (M + BitVec.ofNat 64 8) ≠ 0 := by
        subst hxv
        simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
      exact H_then hS s0 hu rfl ht
    · have e := hu0.symm
      subst e
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      have hxv := mnk_ld_m8 hm hx
      rw [ev_cw] at hy
      cases hy
      have hS : rd s0.memory (M + BitVec.ofNat 64 8) = 0 := by
        subst hxv
        simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
      exact ⟨fun _ => ⟨rfl, rfl, rfl, rfl, hS⟩, fun v h => by cases h⟩
  have := H s0 hs0 rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at this
  exact this v rfl

end InitECandidate.Solver.Band4

#print axioms InitECandidate.Solver.Band4.ret_mpt_nibble_key
