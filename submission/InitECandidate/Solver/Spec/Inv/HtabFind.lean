import InitECandidate.Solver.Spec.Inv.HtabWF

/-!
# `htab_find_leaf` follows the walk relation

`funSpec_find_leaf`: every value `htab_find_leaf(T, key)` returns is the end of the
`WalkFrom` walk from the root, in the entry memory. With `find_last` (`Inv/HtabWF.lean`)
this is the first step of the `htab_del` obligation: on the last key of a well-formed table
the lookup returns exactly the last leaf.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code -/

/-- `nodes + n * 32 + off` -/
def nodeAddr (off : Nat) : ExpHOL 64 :=
  .op .add [lv (nm "nodes"), .panop .mul [lv (nm "n"), cw 32], cw off]

/-- `HT_BIT(key, b) == 0` -/
def bitZero : ExpHOL 64 :=
  .cmp .equal (.op .and [.shift .lsr (.loadByte (.op .add [lv (nm "key"), .shift .lsr (lv (nm "b")) (cw 3)]))
      (.op .sub [cw 7, .op .and [lv (nm "b"), cw 7]]), cw 1]) (cw 0)

def findLoopBody : ProgHOL 64 :=
  .dec (nm "b") .one (.load .one (nodeAddr 24))
    (.seq (.ite (.cmp .equal (lv (nm "b")) (lv (nm "keybits"))) .break .skip)
      (.ite bitZero (.assign .local (nm "n") (.load .one (nodeAddr 8)))
        (.assign .local (nm "n") (.load .one (nodeAddr 16)))))

def findCond : ExpHOL 64 := .cmp .notEqual (lv (nm "n")) (cw 0)

def findBody : ProgHOL 64 :=
  .dec (nm "keybits") .one (.panop .mul [tLoad 0, cw 8])
    (.dec (nm "nodes") .one (tLoad 40)
      (.dec (nm "n") .one (tLoad 56)
        (.seq (.while findCond findLoopBody) (.return (lv (nm "n"))))))

def findParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one)]

theorem entry_htab_find_leaf : fnEntry Guest.Software.guestFn_htab_find_leaf =
    (nm "htab_find_leaf", findParams, findBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_find_leaf :
    guestCode (nm "htab_find_leaf") = some (findParams, findBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
    entry_htab_find_leaf

/-! ## Expression inversions -/

section inv
variable {σ : Type} {s : PanSemStateFiniteExact 64 σ}

theorem mem_word (m : Mem) (a : BitVec 64) : m a = .word (rd m a) := by
  unfold rd; split; rename_i w h; exact h

theorem ev_shift_inv {o : Shift} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.shift o a b) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      ∃ z, wordShiftHOL o x y.toNat = some z ∧ v = .val (.word z) := by
  simp only [ev, evalHOLExact] at h ⊢
  split at h
  · rename_i x y hx hy
    obtain ⟨z, hz, rfl⟩ := Option.map_eq_some_iff.mp h
    exact ⟨x, y, hx, hy, z, hz, rfl⟩
  · simp at h

theorem ev_loadByte_inv {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.loadByte a) = some v) :
    ∃ w, ev s a = some (.val (.word w)) ∧ ∃ byte, kbyte s.memory s.memaddrs s.be w = some byte ∧
      v = .val (.word (BitVec.ofNat 64 byte.toNat)) := by
  simp only [ev, evalHOLExact] at h ⊢
  split at h
  · rename_i w hw
    obtain ⟨byte, hb, rfl⟩ := Option.map_eq_some_iff.mp h
    exact ⟨w, hw, byte, hb, rfl⟩
  · simp at h

theorem ev_and2_inv {a b : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.op .and [a, b]) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (x &&& y)) := by
  obtain ⟨x, y, ha, hb, he⟩ := ev_op2_inv h
  refine ⟨x, y, ha, hb, ?_⟩
  rw [he] at h
  have : wordOpHOL .and [x, y] = some (x &&& y) := by
    simp only [wordOpHOL, wordOp, List.foldr]
    congr 1
    show x &&& (y &&& ~~~0#64) = x &&& y
    rw [BitVec.not_zero, BitVec.and_allOnes]
  rw [this] at h
  exact (Option.some.inj h).symm

theorem lsr_lt (x : BitVec 64) {k : Nat} (hk : k < 64) : wordShiftHOL .lsr x k = some (x >>> k) := by
  unfold wordShiftHOL
  rw [if_neg (by omega)]

/-- `HT_BIT(key, b) == 0` evaluates to a nonzero word iff the walk goes left. -/
theorem bitZero_inv {u : PanSemStateFiniteExact 64 σ} {key bv w : BitVec 64}
    (hk : u.locals.lookup (nm "key") = some (.val (.word key)))
    (hb : u.locals.lookup (nm "b") = some (.val (.word bv)))
    (h : ev u bitZero = some (.val (.word w))) :
    (w ≠ 0 → kbit u.memory u.memaddrs u.be key bv = some true) ∧
      (w = 0 → kbit u.memory u.memaddrs u.be key bv = some false) := by
  obtain ⟨X1, z0, hX1, hz0, hv⟩ := ev_cmp_inv h
  rw [ev_cw] at hz0
  cases hz0
  obtain ⟨S1, one, hS1, hone, hX1v⟩ := ev_and2_inv hX1
  rw [ev_cw] at hone
  cases hone
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hX1v
  subst hX1v
  obtain ⟨LB, SA, hLB, hSA, z, hz, hS1v⟩ := ev_shift_inv hS1
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hS1v
  subst hS1v
  obtain ⟨addr, haddr, byte, hbyte, hLBv⟩ := ev_loadByte_inv hLB
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hLBv
  subst hLBv
  obtain ⟨kx, sh, hkx, hsh, hadv⟩ := ev_add2_inv haddr
  rw [ev_lv, hk] at hkx
  cases hkx
  obtain ⟨bx, three, hbx, hthree, sh', hsh', hshv⟩ := ev_shift_inv hsh
  rw [ev_lv, hb] at hbx
  cases hbx
  rw [ev_cw] at hthree
  cases hthree
  rw [lsr_lt _ (by decide)] at hsh'
  cases hsh'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hshv hadv
  subst hshv hadv
  obtain ⟨seven, a7, hseven, ha7, hSAv⟩ := ev_sub2_inv hSA
  rw [ev_cw] at hseven
  cases hseven
  obtain ⟨bx', seven', hbx', hseven', ha7v⟩ := ev_and2_inv ha7
  rw [ev_lv, hb] at hbx'
  cases hbx'
  rw [ev_cw] at hseven'
  cases hseven'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hSAv ha7v
  subst ha7v
  subst hSAv
  have hx7 : (bv &&& BitVec.ofNat 64 7).toNat ≤ 7 := by
    rw [BitVec.toNat_and]; exact Nat.and_le_right
  have hamt : (BitVec.ofNat 64 7 - (bv &&& BitVec.ofNat 64 7)).toNat < 64 := by bv_omega
  rw [lsr_lt _ hamt] at hz
  cases hz
  have h3 : (BitVec.ofNat 64 3).toNat = 3 := rfl
  rw [h3] at hbyte
  have hkb : kbit u.memory u.memaddrs u.be key bv = some (((BitVec.ofNat 64 byte.toNat >>>
      (BitVec.ofNat 64 7 - (bv &&& BitVec.ofNat 64 7)).toNat) &&& BitVec.ofNat 64 1) ==
        BitVec.ofNat 64 0) := by
    unfold kbit
    rw [hbyte]
    rfl
  rw [hkb]
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq, Flapjack.Compiler.Encoders.Asm.wordCmpHOL]
    at hv
  subst hv
  by_cases hcv : (((BitVec.ofNat 64 byte.toNat >>>
      (BitVec.ofNat 64 7 - (bv &&& BitVec.ofNat 64 7)).toNat) &&& BitVec.ofNat 64 1) ==
        BitVec.ofNat 64 0) = true
  · simp [hcv]
  · simp only [Bool.not_eq_true] at hcv
    simp [hcv]

end inv

/-! ## The loop -/

section loop
variable {σ : Type} {X : Ctx 64}

theorem hoare_break {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ s, InCtx s X → P s → Q (some .break) s) : Hoare σ X P (.break : ProgHOL 64) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def s .break]
  exact h s hs hp

/-- The walk relation in the entry state `s`. -/
abbrev Wk {σ : Type} (s : PanSemStateFiniteExact 64 σ) (T key : BitVec 64) :=
  WalkFrom s.memory s.memaddrs s.be T key

/-- Loop invariant of `htab_find_leaf`: the current node's walk ends where the root's does. -/
def FInv (s : PanSemStateFiniteExact 64 σ) (T key : BitVec 64) (u : PanSemStateFiniteExact 64 σ) :
    Prop :=
  u.memory = s.memory ∧ u.memaddrs = s.memaddrs ∧ u.be = s.be ∧
  u.locals.lookup (nm "keybits") = some (.val (.word (KB s.memory T))) ∧
  u.locals.lookup (nm "nodes") = some (.val (.word (hdr s.memory T 40))) ∧
  u.locals.lookup (nm "key") = some (.val (.word key)) ∧
  ∃ nv, u.locals.lookup (nm "n") = some (.val (.word nv)) ∧
    ∀ v, Wk s T key nv v → Wk s T key (hdr s.memory T 56) v

def FExit (s : PanSemStateFiniteExact 64 σ) (T key : BitVec 64) (u : PanSemStateFiniteExact 64 σ) :
    Prop :=
  ∃ nv, u.locals.lookup (nm "n") = some (.val (.word nv)) ∧ Wk s T key (hdr s.memory T 56) nv

theorem ev_nodeAddr {u : PanSemStateFiniteExact 64 σ} {N nv : BitVec 64} (off : Nat)
    (hN : u.locals.lookup (nm "nodes") = some (.val (.word N)))
    (hn : u.locals.lookup (nm "n") = some (.val (.word nv))) :
    ev u (nodeAddr off) = some (.val (.word (N + nv * BitVec.ofNat 64 32 + BitVec.ofNat 64 off))) := by
  rw [nodeAddr, ev_add3 (show ev u (lv (nm "nodes")) = _ from hN)
    (ev_mul2 (show ev u (lv (nm "n")) = _ from hn) (ev_cw u 32)) (ev_cw u off)]
  rw [BitVec.add_assoc]

/-- Loading node field `off` of the current node reads `nodeF`. -/
theorem load_node {s u : PanSemStateFiniteExact 64 σ} {T key nv : BitVec 64} {v : ValueHOL 64}
    (off : Nat) (hJ : FInv s T key u) (hn : u.locals.lookup (nm "n") = some (.val (.word nv)))
    (h : ev u (.load .one (nodeAddr off)) = some v) : v = .val (.word (nodeF s.memory T nv off)) := by
  obtain ⟨hm, -, -, -, hN, -⟩ := hJ
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one h
  rw [ev_nodeAddr off hN hn] at hw
  cases hw
  rw [hm, mem_word s.memory]
  rfl

theorem findLoop_body (s : PanSemStateFiniteExact 64 σ) (T key : BitVec 64) :
    Hoare σ X (fun u => FInv s T key u ∧ CondTrue u findCond) findLoopBody
      (fun r t => (r = none → FInv s T key t) ∧ (r = some .continue → FInv s T key t) ∧
        (r = some .break → (r = none ∧ FExit s T key t) ∨ FExit s T key t) ∧
        (∀ v, r = some (.returned v) → False)) := by
  refine hoare_dec fun u _ ⟨hJ, hc⟩ vb hvb _ => ?_
  obtain ⟨hm, hd, hbe, hkb, hN, hk, nv, hn, himp⟩ := hJ
  have hvb' := load_node 24 ⟨hm, hd, hbe, hkb, hN, hk, nv, hn, himp⟩ hn hvb
  subst hvb'
  have hn0 : nv ≠ 0 := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨a, b, ha, hb, hne⟩ := cmp_true hw hw0
    rw [ev_lv, hn] at ha
    cases ha
    rw [ev_cw] at hb
    cases hb
    simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hne
  -- the facts on the state with `b` declared
  let u1 := setVarHOLFinite (nm "b") (.val (.word (KIND s.memory T nv))) u
  have hn1 : u1.locals.lookup (nm "n") = some (.val (.word nv)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hn
  have hb1 : u1.locals.lookup (nm "b") = some (.val (.word (KIND s.memory T nv))) := lk_set_self _ _ _
  have hk1 : u1.locals.lookup (nm "key") = some (.val (.word key)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hk
  have hkb1 : u1.locals.lookup (nm "keybits") = some (.val (.word (KB s.memory T))) := by
    rw [lk_set_ne _ _ (by decide)]; exact hkb
  have hN1 : u1.locals.lookup (nm "nodes") = some (.val (.word (hdr s.memory T 40))) := by
    rw [lk_set_ne _ _ (by decide)]; exact hN
  have hJ1 : FInv s T key u1 := ⟨hm, hd, hbe, hkb1, hN1, hk1, nv, hn1, himp⟩
  refine hoare_seq (R := fun r t => t = u1 ∧ (r = none ∨ r = some .break) ∧
      (r = some .break → KIND s.memory T nv = KB s.memory T) ∧
      (r = none → KIND s.memory T nv ≠ KB s.memory T)) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_break fun t _ ⟨ht, w, hw, hw0⟩ => ?_
      have ht' : t = u1 := ht
      subst ht'
      refine ⟨rfl, Or.inr rfl, fun _ => ?_, fun h => (by cases h)⟩
      obtain ⟨a, b, ha, hb, heq⟩ := cmp_true hw hw0
      rw [ev_lv, hb1] at ha
      rw [ev_lv, hkb1] at hb
      cases ha
      cases hb
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using heq
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
      have ht' : t = u1 := ht
      subst ht'
      refine ⟨rfl, Or.inl rfl, fun h => (by cases h), fun _ => ?_⟩
      obtain ⟨a, b, ha, hb, heq⟩ := cmp_false hw
      rw [ev_lv, hb1] at ha
      rw [ev_lv, hkb1] at hb
      cases ha
      cases hb
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using heq
  · -- `break`: the current node is a leaf
    intro r t _ hr _ hR
    obtain ⟨ht, hor, hbr, -⟩ := hR
    subst ht
    rcases hor with h | h
    · exact absurd h hr
    · subst h
      refine ⟨fun h => (by cases h), fun h => (by cases h),
        fun _ => Or.inr ⟨nv, ?_, himp _ (.leaf hn0 (hbr rfl))⟩, fun v h => (by cases h)⟩
      simp only []
      rw [lookup_restore (by decide)]
      exact hn1
  · -- the child step
    refine hoare_pre (P := fun t => t = u1 ∧ KIND s.memory T nv ≠ KB s.memory T) ?_
      (fun t _ h => ⟨h.1, h.2.2.2 rfl⟩)
    refine hoare_ite ?_ ?_
    · refine hoare_assign fun t _ ⟨⟨ht, hne⟩, w, hw, hw0⟩ v hv _ => ?_
      have ht' : t = u1 := ht
      subst ht'
      have hbit := (bitZero_inv hk1 hb1 hw).1 hw0
      have hv' := load_node 8 hJ1 hn1 hv
      subst hv'
      refine ⟨fun _ => ⟨hm, hd, hbe, ?_, ?_, ?_, LEFT s.memory T nv, ?_, ?_⟩, fun h => (by cases h),
        fun h => (by cases h), fun _ h => (by cases h)⟩
      · simp only []; rw [lookup_restore (by decide), lk_set_ne _ _ (by decide)]; exact hkb1
      · simp only []; rw [lookup_restore (by decide), lk_set_ne _ _ (by decide)]; exact hN1
      · simp only []; rw [lookup_restore (by decide), lk_set_ne _ _ (by decide)]; exact hk1
      · simp only []; rw [lookup_restore (by decide)]; exact lk_set_self _ _ _
      · intro v hwv
        have hbit' : kbit s.memory s.memaddrs s.be key (KIND s.memory T nv) = some true := by
          have e1 : u1.memory = s.memory := hm
          have e2 : u1.memaddrs = s.memaddrs := hd
          have e3 : u1.be = s.be := hbe
          rw [e1, e2, e3] at hbit; exact hbit
        exact himp v (.left hn0 hne hbit' hwv)
    · refine hoare_assign fun t _ ⟨⟨ht, hne⟩, hw⟩ v hv _ => ?_
      have ht' : t = u1 := ht
      subst ht'
      have hbit := (bitZero_inv hk1 hb1 hw).2 rfl
      have hv' := load_node 16 hJ1 hn1 hv
      subst hv'
      refine ⟨fun _ => ⟨hm, hd, hbe, ?_, ?_, ?_, RIGHT s.memory T nv, ?_, ?_⟩, fun h => (by cases h),
        fun h => (by cases h), fun _ h => (by cases h)⟩
      · simp only []; rw [lookup_restore (by decide), lk_set_ne _ _ (by decide)]; exact hkb1
      · simp only []; rw [lookup_restore (by decide), lk_set_ne _ _ (by decide)]; exact hN1
      · simp only []; rw [lookup_restore (by decide), lk_set_ne _ _ (by decide)]; exact hk1
      · simp only []; rw [lookup_restore (by decide)]; exact lk_set_self _ _ _
      · intro v hwv
        have hbit' : kbit s.memory s.memaddrs s.be key (KIND s.memory T nv) = some false := by
          have e1 : u1.memory = s.memory := hm
          have e2 : u1.memaddrs = s.memaddrs := hd
          have e3 : u1.be = s.be := hbe
          rw [e1, e2, e3] at hbit; exact hbit
        exact himp v (.right hn0 hne hbit' hwv)

theorem findBody_hoare (s : PanSemStateFiniteExact 64 σ) (T key : BitVec 64)
    (hT : s.locals.lookup (nm "t") = some (.val (.word T)))
    (hk : s.locals.lookup (nm "key") = some (.val (.word key))) :
    Hoare σ X (fun u => u = s) findBody
      (fun r _ => ∀ v, r = some (.returned (.val (.word v))) → Wk s T key (hdr s.memory T 56) v) := by
  refine hoare_dec fun u _ hu v1 hv1 _ => ?_
  have hu' : u = s := hu
  subst hu'
  obtain ⟨x0, e8, hx0, he8, hv1e⟩ := ev_mul2_inv hv1
  have hm0 : u.memory (T + BitVec.ofNat 64 0) = .word x0 := by
    have := ev_tLoad_inv hT hx0
    simp only [ValueHOL.val.injEq] at this
    exact this.symm
  rw [ev_cw] at he8
  cases he8
  subst hv1e
  refine hoare_dec fun u1 _ hu1 v2 hv2 _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "keybits") (.val (.word (x0 * BitVec.ofNat 64 8))) u := hu1
  subst hu1'
  have hT1 : (setVarHOLFinite (nm "keybits") (.val (.word (x0 * BitVec.ofNat 64 8))) u).locals.lookup
      (nm "t") = some (.val (.word T)) := by rw [lk_set_ne _ _ (by decide)]; exact hT
  have hv2' := ev_tLoad_inv hT1 hv2
  subst hv2'
  refine hoare_dec fun u2 _ hu2 v3 hv3 _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "nodes") (.val (u.memory (T + BitVec.ofNat 64 40)))
      (setVarHOLFinite (nm "keybits") (.val (.word (x0 * BitVec.ofNat 64 8))) u) := hu2
  subst hu2'
  have hT2 : (setVarHOLFinite (nm "nodes") (.val (u.memory (T + BitVec.ofNat 64 40)))
      (setVarHOLFinite (nm "keybits") (.val (.word (x0 * BitVec.ofNat 64 8))) u)).locals.lookup
      (nm "t") = some (.val (.word T)) := by rw [lk_set_ne _ _ (by decide)]; exact hT1
  have hv3' := ev_tLoad_inv hT2 hv3
  subst hv3'
  -- the loop invariant on entry
  refine hoare_seq (R := fun r t => r = none ∧ FExit u T key t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (hoare_while (I := FInv u T key) (fun _ h => h)
      (hoare_post (findLoop_body u T key) fun r t _ _ h =>
        ⟨h.1, h.2.1, fun hb => ⟨rfl, (h.2.2.1 hb).elim (fun h' => h'.2) id⟩,
          fun v hv => (h.2.2.2 v hv).elim⟩) ?_) ?_
    · -- exit: `n = 0`
      intro t _ hJ h0
      obtain ⟨-, -, -, -, -, -, nv, hn, himp⟩ := hJ
      obtain ⟨a, b, ha, hb, hne⟩ := cmp_false h0
      rw [ev_lv, hn] at ha
      cases ha
      rw [ev_cw] at hb
      cases hb
      have hz : nv = 0 := by
        simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hne
      subst hz
      exact ⟨rfl, 0, hn, himp _ .zero⟩
    · intro t _ ht
      subst ht
      refine ⟨rfl, rfl, rfl, ?_, ?_, ?_, hdr u.memory T 56, ?_, fun _ h => h⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
        unfold KB hdr
        rw [rd_of hm0]
      · rw [lk_set_ne _ _ (by decide), lk_set_self, mem_word u.memory]
        rfl
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact hk
      · rw [lk_set_self, mem_word u.memory]
        rfl
  · refine hoare_return fun t _ ⟨_, nv, hn, hw⟩ v hv => ?_
    intro v' hv'
    rw [ev_lv, hn] at hv
    cases hv
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv'
    subst hv'
    exact hw

/-- **`htab_find_leaf` follows the walk.** Every word it returns on `(T, key)` is the end of
the walk from the root in the entry state. -/
theorem funSpec_find_leaf (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_find_leaf") (fun vs s r _ => ∀ T key,
      vs = [.val (.word T), .val (.word key)] →
      ∀ v, r = .returned (.val (.word v)) → Wk s T key (hdr s.memory T 56) v) := by
  intro vs body callee rs hl s hs hloc r hr T key hvs v hrv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_htab_find_leaf (by decide) hl
  subst hvs
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hT : s.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hk : s.locals.lookup (nm "key") = some (.val (.word key)) := by rw [hloc]; exact hB
  have := findBody_hoare (X := X) s T key hT hk s hs rfl (by rw [hr, hrv]; trivial)
  rw [hr] at this
  exact this v (by rw [hrv])

/-- On the last key of a well-formed table, `htab_find_leaf` can only return the last leaf
(the first step of `DelSpec σ X TableWF`). -/
theorem find_leaf_last (hC : X.code.lookup = guestCode) {vs : List (ValueHOL 64)}
    {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : lookupCodeHOLFinite X.code.lookup (nm "htab_find_leaf") vs = some (body, callee, rs))
    {s : PanSemStateFiniteExact 64 σ} (hs : InCtx s X) (hloc : s.locals = callee) {T : BitVec 64}
    (hvs : vs = [.val (.word T), .val (.word (lastKey s.memory T))])
    {L : BitVec 64 → Prop} (hwf : Shape s.memory s.memaddrs s.be T L) (hc : 0 < CNT s.memory T)
    {v : BitVec 64}
    (hr : (evaluateHOLFiniteState s body).1 = some (.returned (.val (.word v)))) :
    v = ORD s.memory T (hdr s.memory T 24 - BitVec.ofNat 64 1) :=
  find_last hwf hc (funSpec_find_leaf hC vs body callee rs hl s hs hloc _ hr T _ hvs v rfl)

end loop

end InitECandidate.Solver.Spec.Inv
