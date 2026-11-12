import InitECandidate.Solver.Spec.Inv.HtabNewNode

/-!
# `htab_new_internal`: a fresh internal node `(0, 0, 0, bit)`

`funSpec_new_internal`: from `NNPre`, a returning `htab_new_internal(T, bit)` returns the node `n`
of `htab_new_node` (`NNPost` facts, relative to the entry memory) whose four fields are now
`PAR = LEFT = RIGHT = 0`, `KIND = bit`; every other field the invariant reads is unchanged up to
the old capacity (`NIPost`).

`node_store`: the effect of one store to a node field on everything else, the building block for
`htab_new_leaf` and the final stores of `htab_set`.
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

def niBody : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "htab_new_node") [lv (nm "t")]
    (.dec (nm "nodes") .one (tLoad 40)
      (.seq (.store (nA "n" 0) (cw 0)) (.seq (.store (nA "n" 8) (cw 0))
        (.seq (.store (nA "n" 16) (cw 0)) (.seq (.store (nA "n" 24) (lv (nm "bit")))
          (.return (lv (nm "n"))))))))

def niParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "bit", .one)]

theorem entry_new_internal : fnEntry Guest.Software.guestFn_htab_new_internal =
    (nm "htab_new_internal", niParams, niBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_new_internal : guestCode (nm "htab_new_internal") = some (niParams, niBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 136) (by decide)) ⟨_, rfl⟩
    entry_new_internal

/-! ## One node store -/

section store
variable {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}

/-- A store to field `off` of node `n ≤ cap`: the header, the other node fields, the order
array and the key bytes are unchanged. -/
theorem node_store (hl : Lay m T) {n : BitVec 64} (hn : n.toNat ≤ CAP m T) {off : Nat} (ho : off < 32)
    (x : BitVec 64) :
    let m' := upd m (na (hdr m T 40) n off) x
    (∀ k, k < 88 → hdr m' T k = hdr m T k) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ off' : Nat, off' < 32 → (i ≠ n ∨ off' ≠ off) →
      nodeF m' T i off' = nodeF m T i off') ∧
    nodeF m' T n off = x ∧
    (∀ j : BitVec 64, j.toNat ≤ CAP m T → ORD m' T j = ORD m T j) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
      kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)) ∧
    (∀ a, a ≠ na (hdr m T 40) n off → m' a = m a) := by
  intro m'
  have hh : ∀ k, k < 88 → hdr m' T k = hdr m T k := by
    intro k hk; unfold hdr; rw [rd_upd_ne (hdrNaNe hl hn ho hk)]
  refine ⟨hh, fun i hi off' ho' hne => ?_, ?_, fun j hj => ?_, fun i hi o hlt => ?_, fun a ha => upd_ne ha⟩
  · rw [nodeF_eq, nodeF_eq, hh 40 (by decide), rd_upd_ne (naNe hl hi hn ho' ho hne)]
  · rw [nodeF_eq, hh 40 (by decide), rd_upd_self]
  · unfold ORD; rw [hh 48 (by decide), rd_upd_ne (oaNaNe hl hn hj ho)]
  · have hkp : keyPtr m' T i = keyPtr m T i := by
      unfold keyPtr; rw [hh 32 (by decide), hh 8 (by decide)]
    rw [hkp]
    obtain ⟨h1, h2⟩ := key_cell hl hi hlt
    apply kbyte_congr
    exact upd_ne (keyNaNe hl hn ho h1 h2)

/-- Header facts after a node store. -/
theorem node_store_sep (hs : Sep m T) {n : BitVec 64} (hn : n.toNat ≤ CAP m T) {off : Nat} (ho : off < 32)
    (x : BitVec 64) :
    Sep (upd m (na (hdr m T 40) n off) x) T ∧ CAP (upd m (na (hdr m T 40) n off) x) T = CAP m T ∧
      (∀ k, k < 88 → hdr (upd m (na (hdr m T 40) n off) x) T k = hdr m T k) := by
  have hl := lay_of_sep hs
  have hh := (node_store (d := fun _ => True) (be := false) hl hn ho x).1
  exact ⟨sep_congr (hh 0 (by decide)) (hh 8 (by decide)) (hh 32 (by decide)) (hh 40 (by decide))
    (hh 48 (by decide)) (hh 80 (by decide)) hs, by unfold CAP; rw [hh 80 (by decide)], hh⟩

/-- Four stores filling node `n`. -/
def fill4 (m : Mem) (N n a b c e : BitVec 64) : Mem :=
  upd (upd (upd (upd m (na N n 0) a) (na N n 8) b) (na N n 16) c) (na N n 24) e

theorem fill4_facts (hs : Sep m T) {n : BitVec 64} (hn : n.toNat ≤ CAP m T) (a b c e : BitVec 64) :
    let m' := fill4 m (hdr m T 40) n a b c e
    Sep m' T ∧ CAP m' T = CAP m T ∧ (∀ k, k < 88 → hdr m' T k = hdr m T k) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → i ≠ n → ∀ off : Nat, off < 32 →
      nodeF m' T i off = nodeF m T i off) ∧
    PAR m' T n = a ∧ LEFT m' T n = b ∧ RIGHT m' T n = c ∧ KIND m' T n = e ∧
    (∀ j : BitVec 64, j.toNat ≤ CAP m T → ORD m' T j = ORD m T j) ∧
    (∀ i : BitVec 64, i.toNat ≤ CAP m T → ∀ o : Nat, o < (hdr m T 8).toNat →
      kbyte m' d be (keyPtr m' T i + BitVec.ofNat 64 o) = kbyte m d be (keyPtr m T i + BitVec.ofNat 64 o)) ∧
    (∀ x, x ≠ na (hdr m T 40) n 0 → x ≠ na (hdr m T 40) n 8 → x ≠ na (hdr m T 40) n 16 →
      x ≠ na (hdr m T 40) n 24 → m' x = m x) := by
  intro m'
  -- store 1
  have hl0 := lay_of_sep hs
  obtain ⟨s1, c1, h1⟩ := node_store_sep hs hn (off := 0) (by decide) a
  obtain ⟨-, n1, f1, o1, k1, x1⟩ := node_store (d := d) (be := be) hl0 hn (off := 0) (by decide) a
  generalize hm1 : upd m (na (hdr m T 40) n 0) a = m1 at s1 c1 h1 n1 f1 o1 k1 x1
  have hn1 : n.toNat ≤ CAP m1 T := by rw [c1]; exact hn
  -- store 2
  obtain ⟨s2, c2, h2⟩ := node_store_sep s1 hn1 (off := 8) (by decide) b
  obtain ⟨-, n2, f2, o2, k2, x2⟩ := node_store (d := d) (be := be) (lay_of_sep s1) hn1 (off := 8) (by decide) b
  generalize hm2 : upd m1 (na (hdr m1 T 40) n 8) b = m2 at s2 c2 h2 n2 f2 o2 k2 x2
  have hn2 : n.toNat ≤ CAP m2 T := by rw [c2, c1]; exact hn
  -- store 3
  obtain ⟨s3, c3, h3⟩ := node_store_sep s2 hn2 (off := 16) (by decide) c
  obtain ⟨-, n3, f3, o3, k3, x3⟩ := node_store (d := d) (be := be) (lay_of_sep s2) hn2 (off := 16) (by decide) c
  generalize hm3 : upd m2 (na (hdr m2 T 40) n 16) c = m3 at s3 c3 h3 n3 f3 o3 k3 x3
  have hn3 : n.toNat ≤ CAP m3 T := by rw [c3, c2, c1]; exact hn
  -- store 4
  obtain ⟨s4, c4, h4⟩ := node_store_sep s3 hn3 (off := 24) (by decide) e
  obtain ⟨-, n4, f4, o4, k4, x4⟩ := node_store (d := d) (be := be) (lay_of_sep s3) hn3 (off := 24) (by decide) e
  have e40 : ∀ (mm : Mem), (∀ k, k < 88 → hdr mm T k = hdr m T k) → hdr mm T 40 = hdr m T 40 :=
    fun mm h => h 40 (by decide)
  have H3 : ∀ k, k < 88 → hdr m3 T k = hdr m T k := fun k hk => by rw [h3 k hk, h2 k hk, h1 k hk]
  have H2 : ∀ k, k < 88 → hdr m2 T k = hdr m T k := fun k hk => by rw [h2 k hk, h1 k hk]
  have hm' : m' = upd m3 (na (hdr m3 T 40) n 24) e := by
    show fill4 m (hdr m T 40) n a b c e = _
    rw [H3 40 (by decide), ← hm3, H2 40 (by decide), ← hm2, h1 40 (by decide), ← hm1]
    rfl
  rw [← hm'] at s4 c4 h4 n4 f4 o4 k4 x4
  have hC3 : CAP m3 T = CAP m T := by rw [c3, c2, c1]
  have hC2 : CAP m2 T = CAP m T := by rw [c2, c1]
  refine ⟨s4, by rw [c4, hC3], fun k hk => by rw [h4 k hk, H3 k hk], fun i hi hin off ho => ?_, ?_, ?_, ?_,
    ?_, fun j hj => ?_, fun i hi o ho => ?_, fun x hx0 hx8 hx16 hx24 => ?_⟩
  · rw [n4 i (by rw [hC3]; exact hi) off ho (Or.inl hin), n3 i (by rw [hC2]; exact hi) off ho (Or.inl hin),
      n2 i (by rw [c1]; exact hi) off ho (Or.inl hin), n1 i hi off ho (Or.inl hin)]
  · show nodeF m' T n 0 = a
    rw [n4 n hn3 0 (by decide) (Or.inr (by decide)), n3 n hn2 0 (by decide) (Or.inr (by decide)),
      n2 n hn1 0 (by decide) (Or.inr (by decide)), f1]
  · show nodeF m' T n 8 = b
    rw [n4 n hn3 8 (by decide) (Or.inr (by decide)), n3 n hn2 8 (by decide) (Or.inr (by decide)), f2]
  · show nodeF m' T n 16 = c
    rw [n4 n hn3 16 (by decide) (Or.inr (by decide)), f3]
  · exact f4
  · rw [o4 j (by rw [hC3]; exact hj), o3 j (by rw [hC2]; exact hj), o2 j (by rw [c1]; exact hj), o1 j hj]
  · rw [k4 i (by rw [hC3]; exact hi) o (by rw [H3 8 (by decide)]; exact ho),
      k3 i (by rw [hC2]; exact hi) o (by rw [H2 8 (by decide)]; exact ho),
      k2 i (by rw [c1]; exact hi) o (by rw [h1 8 (by decide)]; exact ho), k1 i hi o ho]
  · rw [x4 x (by rw [e40 m3 H3]; exact hx24), x3 x (by rw [e40 m2 H2]; exact hx16),
      x2 x (by rw [e40 m1 h1]; exact hx8), x1 x hx0]

end store

/-! ## The Hoare proof -/

section hoare
variable {σ : Type} {X : Ctx 64}

/-- What a returning `htab_new_internal(T, bit)` did: `htab_new_node`'s `NNPost` up to a memory
`mN`, then the four fields of the returned node filled with `(0, 0, 0, bit)`. -/
def NIRet (s0 u : PanSemStateFiniteExact 64 σ) (T bit : BitVec 64) (fl : List (BitVec 64)) (H0 : BitVec 64)
    (v : ValueHOL 64) : Prop :=
  ∃ n H1 : BitVec 64, v = .val (.word n) ∧ u.globals.lookup hpN = some (.val (.word H1)) ∧
    (∃ mN : Mem, NNPost s0.memory mN s0.memaddrs s0.be T fl H0 H1 n ∧
      u.memory = fill4 mN (hdr mN T 40) n 0 0 0 bit) ∧
    (∀ g, g ≠ hpN → u.globals.lookup g = s0.globals.lookup g) ∧ u.memaddrs = s0.memaddrs ∧
    u.be = s0.be

theorem niBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T bit H0 : BitVec 64} {fl : List (BitVec 64)} (hT : DLk s0 "t" T) (hbit : DLk s0 "bit" bit)
    (hP : NNPre s0.memory T fl H0) (hhp : s0.globals.lookup hpN = some (.val (.word H0))) :
    Hoare σ X (fun t => t = s0) niBody
      (fun r u => ∀ v, r = some (.returned v) → NIRet s0 u T bit fl H0 v) := by
  refine hoare_decCallS (funSpec_new_node hC) fun s hs hs0 vs hvs callee v st hR hst hsh => ?_
  subst hs0
  obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
  have hr : r1 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr1; exact (Option.some.inj hr1).symm
  subst hr
  rw [ev_lv_w hT] at ha
  cases ha
  obtain ⟨n, H1, rfl, hp1, hpost, hgo, hgd, hgb⟩ := hR T H0 fl rfl hP hhp v rfl
  -- the state after the call
  have hT1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "t" T := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact hT
  have hb1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "bit" bit := by
    unfold DLk; rw [lk_set_ne _ _ (by decide)]; exact hbit
  have hn1 : DLk (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }) "n" n := by
    unfold DLk; rw [lk_set_self]
  have hm1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).memory =
    st.memory := rfl
  have hg1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).globals =
    st.globals := rfl
  have hd1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).memaddrs =
    st.memaddrs := rfl
  have hbe1 : (setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals }).be = st.be := rfl
  generalize setVarHOLFinite (nm "n") (.val (.word n)) { st with locals := s.locals } = u1 at hT1 hb1 hn1 hm1 hg1 hd1 hbe1 ⊢
  refine hoare_dec fun u2 _ hu2 v2 hv2 _ => ?_
  have hu2' : u2 = u1 := hu2
  subst hu2'
  have e := ev_tLoad_w hT1 hv2
  subst e
  generalize hNd : rd u2.memory (T + BitVec.ofNat 64 40) = N at *
  have hN : hdr st.memory T 40 = N := by rw [← hm1]; exact hNd
  have hN2 : DLk (setVarHOLFinite (nm "nodes") (.val (.word N)) u2) "nodes" N := by
    unfold DLk; rw [lk_set_self]
  have hn2 : DLk (setVarHOLFinite (nm "nodes") (.val (.word N)) u2) "n" n := by lks
  have hbt2 : DLk (setVarHOLFinite (nm "nodes") (.val (.word N)) u2) "bit" bit := by lks
  -- the four stores
  have hst : ∀ (off : Nat) (val : ExpHOL 64) (w : BitVec 64) (M : Mem),
      (∀ t : PanSemStateFiniteExact 64 σ, DLk t "bit" bit → ev t val = some (.val (.word w))) →
      Hoare σ X (fun t => t.memory = M ∧ t.locals = (setVarHOLFinite (nm "nodes") (.val (.word N)) u2).locals ∧
          t.globals = u2.globals ∧ t.memaddrs = u2.memaddrs ∧ t.be = u2.be)
        (.store (nA "n" off) val)
        (fun r t => r = none ∧ t.memory = upd M (na N n off) w ∧
          t.locals = (setVarHOLFinite (nm "nodes") (.val (.word N)) u2).locals ∧
          t.globals = u2.globals ∧ t.memaddrs = u2.memaddrs ∧ t.be = u2.be) := by
    intro off val w M hval
    refine hoare_store_w (fun _ => na N n off) (fun _ => w) ?_ ?_ ?_
    · rintro t _ ⟨-, hl, -⟩ x hx
      rw [ev_nA (by unfold DLk; rw [hl]; exact hN2) (by unfold DLk; rw [hl]; exact hn2)] at hx
      exact (word_inj hx).symm
    · rintro t _ ⟨-, hl, -⟩ x hx
      rw [hval t (by unfold DLk; rw [hl]; exact hbt2)] at hx
      exact (Option.some.inj hx).symm
    · rintro t _ ⟨hm, hl, hg, hd, hb⟩
      exact ⟨rfl, by show upd t.memory _ _ = _; rw [hm], hl, hg, hd, hb⟩
  refine hoare_pre (hseq (hst 0 (cw 0) 0 u2.memory (fun t _ => ev_cw t 0))
    (hseq (hst 8 (cw 0) 0 _ (fun t _ => ev_cw t 0)) (hseq (hst 16 (cw 0) 0 _ (fun t _ => ev_cw t 0))
      (hseq (hst 24 (lv (nm "bit")) bit _ (fun t h => ev_lv_w h)) ?_)))) (fun t _ ht => by
        subst ht; exact ⟨rfl, rfl, rfl, rfl, rfl⟩)
  refine hoare_return fun t _ ⟨hm, hl, hg, hd, hb⟩ w hw => fun v' hv' => ?_
  rw [ev_lv_w (by unfold DLk; rw [hl]; exact hn2)] at hw
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  refine ⟨n, H1, (Option.some.inj hw).symm, by show t.globals.lookup hpN = _; rw [hg, hg1]; exact hp1,
    ⟨st.memory, hpost, ?_⟩, fun g hgn => by show t.globals.lookup g = _; rw [hg, hg1]; exact hgo g hgn,
    by show t.memaddrs = _; rw [hd, hd1]; exact hgd, by show t.be = _; rw [hb, hbe1]; exact hgb⟩
  show t.memory = _
  rw [hm, hN, hm1]
  rfl

end hoare

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_new_internal`.** -/
theorem funSpec_new_internal (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_new_internal") (fun vs s r u => ∀ (T bit H0 : BitVec 64) (fl : List (BitVec 64)),
      vs = [.val (.word T), .val (.word bit)] → NNPre s.memory T fl H0 →
      s.globals.lookup hpN = some (.val (.word H0)) → ∀ v, r = .returned v → NIRet s u T bit fl H0 v) := by
  intro vs body callee rs hl s hs hloc r hr T bit H0 fl hvs hP hhp v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_new_internal (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hT : DLk s "t" T := by unfold DLk; rw [hloc]; exact hA
  have hb : DLk s "bit" bit := by unfold DLk; rw [hloc]; exact hB
  have H := niBody_hoare (X := X) hC s hT hb hP hhp s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

end spec

end InitECandidate.Solver.Spec.Inv
