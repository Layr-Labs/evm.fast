import InitECandidate.Solver.Spec.Mpt.Leaves.Nlc

/-!
# `BeginSpec`: `_node_rlp_begin` writes its record and a fresh compact buffer

```
fun 1 _node_rlp_begin(1 fr, 1 node) {
  var k = lds node; var payload = 0; var cbuf = 0; var clen = 0;
  if k != 3 {
    var nlen = lds (node + 40);
    cbuf = alloc((nlen >>> 1) + 2);
    var isl = 0; if k == 1 { isl = 1; }
    clen = nibble_list_to_compact(lds (node + 32), nlen, isl, cbuf);
    var 1 el = rlp_bytes_encoded_len(ld8 cbuf, clen);
    payload = el;
    if k == 1 { var 1 vl = rlp_value_encoded_len(lds (node + 48), lds (node + 56)); payload = payload + vl; }
  }
  st fr + 24, cbuf; st fr + 32, clen; st fr + 40, payload; return 0; }
```

`beginSpec : BeginSpec σ X`. The compact buffer is the fresh block `[cbuf, cbuf + nlen/2 + 2)`, and
`nibble_list_to_compact` writes only `cbuf[0 ..= nlen/2]` (`foot_nibble_list_to_compact`). The length
functions return `encLen` / `valLen` (`RlpLen.lean`), read in the state after the compact
encoding. That state agrees with the exit state on the buffer's first byte, on the node's cells
and on the leaf value's first byte: the record stores land at `fr ≥ heapEnd`, the fresh block at or
above the entry `heap_ptr`, and `TrieOK` puts the node and the value's first cell below it.
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

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The code -/

def nrbInner : ProgHOL 64 :=
  .dec (nm "nlen") .one (.load .one (.op .add [lv (nm "node"), cw 40]))
    (.seq (.call (some (some (.local, nm "cbuf"), none)) (nm "alloc")
        [.op .add [.shift .lsr (lv (nm "nlen")) (cw 1), cw 2]])
      (.dec (nm "isl") .one (cw 0)
        (.seq (.ite (.cmp .equal (lv (nm "k")) (cw 1)) (.assign .local (nm "isl") (cw 1)) .skip)
          (.seq (.call (some (some (.local, nm "clen"), none)) (nm "nibble_list_to_compact")
              [.load .one (.op .add [lv (nm "node"), cw 32]), lv (nm "nlen"), lv (nm "isl"),
                lv (nm "cbuf")])
            (.decCall (nm "el") .one (nm "rlp_bytes_encoded_len") [.loadByte (lv (nm "cbuf")),
                lv (nm "clen")]
              (.seq (.assign .local (nm "payload") (lv (nm "el")))
                (.ite (.cmp .equal (lv (nm "k")) (cw 1))
                  (.decCall (nm "vl") .one (nm "rlp_value_encoded_len")
                    [.load .one (.op .add [lv (nm "node"), cw 48]),
                      .load .one (.op .add [lv (nm "node"), cw 56])]
                    (.assign .local (nm "payload") (.op .add [lv (nm "payload"), lv (nm "vl")])))
                  .skip)))))))

def nrbBody : ProgHOL 64 :=
  .dec (nm "k") .one (.load .one (.op .add [lv (nm "node"), cw 0]))
    (.dec (nm "payload") .one (cw 0) (.dec (nm "cbuf") .one (cw 0) (.dec (nm "clen") .one (cw 0)
      (.seq (.ite (.cmp .notEqual (lv (nm "k")) (cw 3)) nrbInner .skip)
        (.seq (.store (.op .add [lv (nm "fr"), cw 24]) (lv (nm "cbuf")))
          (.seq (.store (.op .add [lv (nm "fr"), cw 32]) (lv (nm "clen")))
            (.seq (.store (.op .add [lv (nm "fr"), cw 40]) (lv (nm "payload")))
              (.return (cw 0)))))))))

theorem entry_node_rlp_begin : fnEntry Guest.Software.guestFn__node_rlp_begin =
    (nm "_node_rlp_begin", [(nm "fr", .one), (nm "node", .one)], nrbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_rlp_begin :
    guestCode (nm "_node_rlp_begin") = some ([(nm "fr", .one), (nm "node", .one)], nrbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 281) (by decide)) ⟨_, rfl⟩
    entry_node_rlp_begin

/-! ## Locals and frame -/

/-- The begin body's word locals. -/
structure BgL (FR ND K CB CL PL : BitVec 64) (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop where
  fr : m.lookup (nm "fr") = some (.val (.word FR))
  node : m.lookup (nm "node") = some (.val (.word ND))
  k : m.lookup (nm "k") = some (.val (.word K))
  cbuf : m.lookup (nm "cbuf") = some (.val (.word CB))
  clen : m.lookup (nm "clen") = some (.val (.word CL))
  payload : m.lookup (nm "payload") = some (.val (.word PL))

/-- The six names the begin body tracks. -/
def BgN (x : MlS) : Prop :=
  x ≠ nm "fr" ∧ x ≠ nm "node" ∧ x ≠ nm "k" ∧ x ≠ nm "cbuf" ∧ x ≠ nm "clen" ∧ x ≠ nm "payload"

theorem bgL_upd {FR ND K CB CL PL : BitVec 64} {m : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : BgL FR ND K CB CL PL m) {x : MlS} (hx : BgN x) (v : ValueHOL 64) :
    BgL FR ND K CB CL PL (m.update (x, v)) := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hx
  exact ⟨by rw [lookup_update_ne _ _ h1]; exact h.fr, by rw [lookup_update_ne _ _ h2]; exact h.node,
    by rw [lookup_update_ne _ _ h3]; exact h.k, by rw [lookup_update_ne _ _ h4]; exact h.cbuf,
    by rw [lookup_update_ne _ _ h5]; exact h.clen, by rw [lookup_update_ne _ _ h6]; exact h.payload⟩

theorem bgL_res {FR ND K CB CL PL : BitVec 64} {m : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : BgL FR ND K CB CL PL m) {x : MlS} (hx : BgN x) (o : Option (ValueHOL 64)) :
    BgL FR ND K CB CL PL (m.resVarEq (x, o)) := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hx
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.fr, by rw [lookup_resVarEq_ne _ _ h2]; exact h.node,
    by rw [lookup_resVarEq_ne _ _ h3]; exact h.k, by rw [lookup_resVarEq_ne _ _ h4]; exact h.cbuf,
    by rw [lookup_resVarEq_ne _ _ h5]; exact h.clen, by rw [lookup_resVarEq_ne _ _ h6]; exact h.payload⟩

theorem bgL_cbuf {FR ND K CB CL PL : BitVec 64} {m : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : BgL FR ND K CB CL PL m) (q : BitVec 64) :
    BgL FR ND K q CL PL (m.update (nm "cbuf", .val (.word q))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.fr,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.node,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.k, lookup_update_self _ _ _,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.clen,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.payload⟩

theorem bgL_clen {FR ND K CB CL PL : BitVec 64} {m : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : BgL FR ND K CB CL PL m) (q : BitVec 64) :
    BgL FR ND K CB q PL (m.update (nm "clen", .val (.word q))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.fr,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.node,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.k,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.cbuf, lookup_update_self _ _ _,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.payload⟩

theorem bgL_payload {FR ND K CB CL PL : BitVec 64} {m : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : BgL FR ND K CB CL PL m) (q : BitVec 64) :
    BgL FR ND K CB CL q (m.update (nm "payload", .val (.word q))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.fr,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.node,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.k,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.cbuf,
   by rw [lookup_update_ne _ _ (by decide)]; exact h.clen, lookup_update_self _ _ _⟩

theorem bgN_nlen : BgN (nm "nlen") := by unfold BgN; decide
theorem bgN_isl : BgN (nm "isl") := by unfold BgN; decide
theorem bgN_el : BgN (nm "el") := by unfold BgN; decide
theorem bgN_vl : BgN (nm "vl") := by unfold BgN; decide

/-- The begin frame: globals other than `heap_ptr` and the byte order kept, pointers ordered with
`hp` not lower, memory changed only in fresh heap `[p.hp, heapEnd)`. -/
def BgF (p : Ptrs) (s0 t : State σ) : Prop :=
  (∀ g, g ≠ MemSafe.gHeap → t.globals.lookup g = s0.globals.lookup g) ∧ t.be = s0.be ∧
    (∃ p1 : Ptrs, ptrsOf t = some p1 ∧ p1.Ordered ∧ p.hp ≤ p1.hp) ∧
    ∀ a : BitVec 64, t.memory a ≠ s0.memory a → p.hp ≤ a.toNat ∧ a.toNat < heapEnd

theorem bgF_locals {p : Ptrs} {s0 t : State σ} (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : BgF p s0 t) : BgF p s0 { t with locals := L } := h

/-- The state after the `k != 3` block. -/
def BgIn (p : Ptrs) (s0 : State σ) (FR ND K : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  r = none ∧ BgF p s0 t ∧ ∃ CB CL PL : BitVec 64, BgL FR ND K CB CL PL t.locals ∧
    p.hp ≤ CB.toNat ∧ CB.toNat % 8 = 0 ∧ (∃ p1 : Ptrs, ptrsOf t = some p1 ∧ CB.toNat < p1.hp) ∧
    (K = 2 → PL = encLen (ld8W t CB) CL) ∧
    (K = 1 → PL = encLen (ld8W t CB) CL +
      valLen (ld8W t (rd t.memory (ND + 48))) (rd t.memory (ND + 56)))

theorem bgIn_res {p : Ptrs} {s0 : State σ} {FR ND K : BitVec 64} {x : MlS} (hx : BgN x)
    (r : Option (PanSemResultExact 64)) (t : State σ) (o : Option (ValueHOL 64))
    (h : BgIn p s0 FR ND K r t) :
    BgIn p s0 FR ND K r { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨hr, hf, CB, CL, PL, hl, h1, h2, h3, h4, h5⟩ := h
  exact ⟨hr, hf, CB, CL, PL, bgL_res hl hx o, h1, h2, h3, h4, h5⟩

/-! ## The `k != 3` block -/

theorem ev_shr1 {s : State σ} {x : MlS} {V : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word V))) :
    ev s (.shift .lsr (lv x) (cw 1)) = some (.val (.word (V >>> (1 : Nat)))) := by
  rw [ev_shift (ev_lv' h) (ev_cw _ 1)]
  simp [wordShiftHOL]

theorem size_toNat (NL : BitVec 64) :
    ((NL >>> (1 : Nat)) + BitVec.ofNat 64 2).toNat = NL.toNat / 2 + 2 := by
  have h1 : (NL >>> (1 : Nat)).toNat = NL.toNat / 2 := by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]; try rfl
  have := NL.isLt
  rw [BitVec.toNat_add, h1, BitVec.toNat_ofNat]
  try omega

theorem nrb_inner (hC : X.code.lookup = guestCode) {p : Ptrs} {s0 : State σ} {FR ND K : BitVec 64}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) :
    Hoare σ X (fun t => BgL FR ND K 0 0 0 t.locals ∧ t.memory = s0.memory ∧
      t.globals = s0.globals ∧ t.be = s0.be) nrbInner (BgIn p s0 FR ND K) := by
  unfold nrbInner
  refine hoare_dec fun s _ ⟨hl, hm, hg, hbe⟩ v hv _ => ?_
  obtain ⟨w40, -, -, rfl⟩ := ev_load1_inv' hv
  refine hoare_conseq (Q := BgIn p s0 FR ND K) ?_ (fun _ _ h => h)
    fun r t _ _ h => bgIn_res bgN_nlen r t _ h
  set NL := rd s.memory w40
  have hps : ptrsOf s = some p := by rw [ptrsOf_frame hg]; exact hp
  -- `cbuf = alloc((nlen >>> 1) + 2)`
  refine hoare_seq (R := fun r t => r = none ∧ ∃ q : BitVec 64,
      BgL FR ND K q 0 0 t.locals ∧ t.locals.lookup (nm "nlen") = some (.val (.word NL)) ∧
      t.memory = s0.memory ∧ (∀ g, g ≠ MemSafe.gHeap → t.globals.lookup g = s0.globals.lookup g) ∧
      t.be = s0.be ∧ (∃ p1 : Ptrs, ptrsOf t = some p1 ∧ p1.Ordered ∧ p.hp ≤ p1.hp ∧
        q.toNat + (NL.toNat / 2 + 2) ≤ p1.hp) ∧ p.hp ≤ q.toNat ∧ q.toNat % 8 = 0) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA ((MemSafe.allocSpec_alloc (σ := σ) hC).and (Spec.Inv.funSpec_be _))
      fun t _ ht avs havs callee v st ⟨hR, hbe'⟩ _ _ => ?_
    subst ht
    have hnl : (setVarHOLFinite (nm "nlen") (.val (.word NL)) s).locals.lookup (nm "nlen") =
        some (.val (.word NL)) := lk_set_self _ _ _
    rw [evs_cons (ev_add2 (ev_shr1 hnl) (ev_cw _ 2)) evs_nil] at havs
    simp only [Option.some.injEq] at havs
    subst havs
    obtain ⟨hm', hgl', p1, hp1, ho1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hps hord
    obtain ⟨q, rfl, hq8, ⟨hq1, hq2⟩, hfree⟩ := hq _ rfl
    rw [size_toNat] at hq2 hfree
    have hpq : p.hp ≤ q.toNat := alloc_start hq1 (by omega) hfree
    refine ⟨rfl, q, bgL_cbuf (bgL_upd hl bgN_nlen _) q, ?_, hm'.trans hm,
      fun g hgn => (hgl' g hgn).trans (by show s.globals.lookup g = _; rw [hg]), hbe'.trans hbe,
      ⟨p1, hp1, ho1, hmono.1, hq2⟩, hpq, hq8⟩
    exact (lk_set_ne _ _ (by decide)).trans hnl
  refine hoare_pre (P := fun t => ∃ q : BitVec 64,
      BgL FR ND K q 0 0 t.locals ∧ t.locals.lookup (nm "nlen") = some (.val (.word NL)) ∧
      t.memory = s0.memory ∧ (∀ g, g ≠ MemSafe.gHeap → t.globals.lookup g = s0.globals.lookup g) ∧
      t.be = s0.be ∧ (∃ p1 : Ptrs, ptrsOf t = some p1 ∧ p1.Ordered ∧ p.hp ≤ p1.hp ∧
        q.toNat + (NL.toNat / 2 + 2) ≤ p1.hp) ∧ p.hp ≤ q.toNat ∧ q.toNat % 8 = 0)
    (hoare_exists fun q => ?_) fun _ _ h => h.2
  -- `var isl = 0; if k == 1 { isl = 1; }`
  refine hoare_dec fun s1 _ ⟨hl1, hn1, hm1, hg1, hbe1, hP1, hpq, hq8⟩ v1 hv1 _ => ?_
  rw [ev_cw] at hv1
  cases hv1
  refine hoare_conseq (Q := BgIn p s0 FR ND K) ?_ (fun _ _ h => h)
    fun r t _ _ h => bgIn_res bgN_isl r t _ h
  obtain ⟨p1, hp1, ho1, hpp1, hq2⟩ := hP1
  have hqE : q.toNat + (NL.toNat / 2 + 2) ≤ heapEnd := le_trans hq2 ho1.2.1
  -- the state facts up to the compact encoding, `isl` some word
  let A3 : State σ → Prop := fun t => BgL FR ND K q 0 0 t.locals ∧
    t.locals.lookup (nm "nlen") = some (.val (.word NL)) ∧
    (∃ IL : BitVec 64, t.locals.lookup (nm "isl") = some (.val (.word IL))) ∧
    t.memory = s0.memory ∧ (∀ g, g ≠ MemSafe.gHeap → t.globals.lookup g = s0.globals.lookup g) ∧
    t.be = s0.be ∧ ptrsOf t = some p1
  have hA3 : A3 (setVarHOLFinite (nm "isl") (.val (.word (BitVec.ofNat 64 0))) s1) :=
    ⟨bgL_upd hl1 bgN_isl _, by rw [lk_set_ne _ _ (by decide)]; exact hn1, ⟨_, lk_set_self _ _ _⟩,
      hm1, hg1, hbe1, hp1⟩
  refine hoare_seq (R := fun r t => r = none ∧ A3 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite (hoare_assign fun t _ ⟨ht, _⟩ v hv _ => ?_) (hoare_skip fun t _ ⟨ht, _⟩ => ?_)
    · subst ht
      rw [ev_cw] at hv
      cases hv
      obtain ⟨a1, a2, -, a4, a5, a6, a7⟩ := hA3
      exact ⟨rfl, bgL_upd a1 bgN_isl _, by rw [lk_set_ne _ _ (by decide)]; exact a2,
        ⟨_, lk_set_self _ _ _⟩, a4, a5, a6, a7⟩
    · subst ht; exact ⟨rfl, hA3⟩
  -- `clen = nibble_list_to_compact(lds (node + 32), nlen, isl, cbuf)`
  let A4 : State σ → Prop := fun t => ∃ CL : BitVec 64, BgL FR ND K q CL 0 t.locals ∧
    BgF p s0 t ∧ ptrsOf t = some p1
  refine hoare_seq (R := fun r t => r = none ∧ A4 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA ((foot_nibble_list_to_compact (σ := σ) hC).and (Spec.Inv.funSpec_be _))
      fun t _ ⟨_, a1, a2, ⟨IL, a3⟩, a4, a5, a6, a7⟩ avs havs callee v st ⟨hR, hbe'⟩ _ hval => ?_
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv havs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    obtain ⟨v4, vs4, rfl, h4, hvs4⟩ := evs_cons_inv hvs3
    have : vs4 = [] := by
      have h0 : evs t ([] : List (ExpHOL 64)) = some [] := evs_nil
      rw [h0] at hvs4; exact (Option.some.inj hvs4).symm
    subst this
    obtain ⟨wa, -, -, rfl⟩ := ev_load1_inv' h1
    rw [ev_lv, a2] at h2; cases h2
    rw [ev_lv, a3] at h3; cases h3
    rw [ev_lv, a1.cbuf] at h4; cases h4
    obtain ⟨hg', hmod⟩ := hR (by simp [Good]) _ NL IL q rfl
    obtain ⟨CL, rfl⟩ := MemSafe.Helpers.valid_word a1.clen hval
    refine ⟨rfl, CL, bgL_clen a1 CL, ⟨fun g hgn => ?_, hbe'.trans a6, ⟨p1, ?_, ho1, hpp1⟩,
      fun b hb => ?_⟩, ?_⟩
    · show st.globals.lookup g = _
      rw [hg']; exact a5 g hgn
    · show ptrsOf { st with locals := _ } = _
      rw [← a7]; exact ptrsOf_frame hg'
    · have hb' : st.memory b ≠ t.memory b := by rw [a4]; exact hb
      obtain ⟨j, hj, rfl⟩ : NlcR q NL b := by by_contra hn; exact hb' (hmod b hn)
      have hE : heapEnd < 2 ^ 64 := by decide
      rw [MemSafe.Helpers.byteAlign_toNat, BitVec.toNat_add, BitVec.toNat_ofNat,
        Nat.mod_eq_of_lt (by omega : j < 2 ^ 64), Nat.mod_eq_of_lt (by omega)]
      constructor <;> omega
    · show ptrsOf { st with locals := _ } = _
      rw [← a7]; exact ptrsOf_frame hg'
  have hqp1 : q.toNat < p1.hp := by omega
  refine hoare_pre (P := fun t => ∃ CL : BitVec 64, BgL FR ND K q CL 0 t.locals ∧ BgF p s0 t ∧
      ptrsOf t = some p1) (hoare_exists fun CL => ?_) fun _ _ h => h.2
  -- `var el = rlp_bytes_encoded_len(ld8 cbuf, clen)`
  refine hoare_decCallS ((footRet_rlp_bytes_encoded_len (σ := σ) hC).and (Spec.Inv.funSpec_be _))
    fun t _ ⟨a1, a2, a3⟩ avs havs callee v st ⟨hR, hbe'⟩ _ _ => ?_
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv havs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  have : vs2 = [] := by
    have h0 : evs t ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hvs2; exact (Option.some.inj hvs2).symm
  subst this
  rw [ev_loadByte_ld8W (ev_lv' a1.cbuf) h1] at hR
  rw [ev_lv, a1.clen] at h2
  cases h2
  obtain ⟨hg', hm', hret⟩ := hR (by simp [Good]) trivial
  have hv := hret v rfl (ld8W t q) CL rfl rfl
  subst hv
  refine hoare_conseq (Q := BgIn p s0 FR ND K) ?_ (fun _ _ h => h)
    fun r t' _ _ h => bgIn_res bgN_el r t' _ h
  have hmst : st.memory = t.memory := by
    funext a; exact hm' a (fun h => h.elim)
  -- facts of the states after `el`: memory, byte order and globals of `t`
  let A6 : BitVec 64 → State σ → Prop := fun PL t' => BgL FR ND K q CL PL t'.locals ∧
    t'.memory = t.memory ∧ t'.be = t.be ∧ t'.globals = t.globals
  have hA6 : ∀ t', A6 (encLen (ld8W t q) CL) t' → BgF p s0 t' ∧ ptrsOf t' = some p1 ∧
      ld8W t' q = ld8W t q := fun t' ⟨_, b2, b3, b4⟩ => by
    obtain ⟨g1, g2, ⟨p2, hp2, ho2, hh2⟩, g4⟩ := a2
    refine ⟨⟨fun g hgn => by rw [b4]; exact g1 g hgn, b3.trans g2, ⟨p2, ?_, ho2, hh2⟩,
      fun a ha => g4 a (by rw [← b2]; exact ha)⟩, ?_, ?_⟩
    · rw [ptrsOf_frame b4]; exact hp2
    · rw [ptrsOf_frame b4]; exact a3
    · unfold ld8W byteOf; rw [b2, b3]
  refine hoare_seq (R := fun r t' => r = none ∧ A6 (encLen (ld8W t q) CL) t') ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t' _ ht' w hw _ => ?_
    subst ht'
    rw [ev_lv, lk_set_self] at hw
    cases hw
    exact ⟨rfl, bgL_payload (bgL_upd a1 bgN_el _) _, hmst, hbe', hg'⟩
  refine hoare_ite ?_ ?_
  · -- `k == 1`: `var vl = rlp_value_encoded_len(lds (node + 48), lds (node + 56)); payload += vl`
    refine hoare_decCallS ((funSpec_rlp_value_encoded_len (σ := σ) hC).and (Spec.Inv.funSpec_be _))
      fun t6 _ ⟨⟨_, b1, b2, b3, b4⟩, wc, hwc, hwc0⟩ avs6 havs6 callee6 v6 st6 ⟨hR6, hbe6⟩ _ _ => ?_
    have hK1 : K = 1 := equal_true (cmp_val_true hwc hwc0 (ev_lv' b1.k) (ev_cw _ 1))
    obtain ⟨u1, us1, rfl, g1, hus1⟩ := evs_cons_inv havs6
    obtain ⟨u2, us2, rfl, g2, hus2⟩ := evs_cons_inv hus1
    have : us2 = [] := by
      have h0 : evs t6 ([] : List (ExpHOL 64)) = some [] := evs_nil
      rw [h0] at hus2; exact (Option.some.inj hus2).symm
    subst this
    obtain ⟨w48, hw48, -, rfl⟩ := ev_load1_inv' g1
    obtain ⟨w56, hw56, -, rfl⟩ := ev_load1_inv' g2
    rw [ev_add_cw b1.node 48] at hw48
    rw [ev_add_cw b1.node 56] at hw56
    cases hw48; cases hw56
    obtain ⟨hg6, hm6, hret6⟩ := hR6 (by simp [Good])
    have hv6 := hret6 v6 rfl _ _ rfl
    subst hv6
    refine hoare_conseq (Q := BgIn p s0 FR ND K) ?_ (fun _ _ h => h)
      fun r t' _ _ h => bgIn_res bgN_vl r t' _ h
    refine hoare_assign fun t7 _ ht7 w hw _ => ?_
    subst ht7
    rw [ev_add2 (ev_lv' (by rw [lk_set_ne _ _ (by decide)]; exact b1.payload))
      (ev_lv' (lk_set_self _ _ _))] at hw
    cases hw
    have hA7 : A6 (encLen (ld8W t q) CL) (setVarHOLFinite (nm "vl") (.val (.word (valLen
        (ld8W (callEntryStateHOLFinite t6 callee6) (rd t6.memory (ND + BitVec.ofNat 64 48)))
        (rd t6.memory (ND + BitVec.ofNat 64 56))))) { st6 with locals := t6.locals }) :=
      ⟨bgL_upd b1 bgN_vl _, hm6.trans b2, hbe6.trans b3, hg6.trans b4⟩
    obtain ⟨hF7, hP7, hL7⟩ := hA6 _ hA7
    have hmf : st6.memory = t6.memory := hm6
    have hbf : st6.be = t6.be := hbe6
    refine ⟨rfl, hF7, q, CL, _, bgL_payload (bgL_upd b1 bgN_vl _) _, hpq, hq8,
      ⟨p1, hP7, hqp1⟩, fun hK2 => absurd (hK1.symm.trans hK2) (by decide), fun _ => ?_⟩
    congr 1
    · congr 1
      unfold ld8W byteOf; simp only [setVarHOLFinite]; rw [hmf, hbf, b2, b3]
    · show valLen (ld8W t6 _) _ = valLen (ld8W st6 (rd st6.memory _)) (rd st6.memory _)
      unfold ld8W byteOf; rw [hmf, hbf]; rfl
  · exact hoare_skip fun t' _ ⟨⟨_, b1, b2, b3, b4⟩, hc⟩ => by
      have hK1 : K ≠ 1 := equal_false (cmp_val_false hc (ev_lv' b1.k) (ev_cw _ 1))
      obtain ⟨hF, hP, hL⟩ := hA6 t' ⟨b1, b2, b3, b4⟩
      exact ⟨rfl, hF, q, CL, _, b1, hpq, hq8, ⟨p1, hP, hqp1⟩, fun _ => by rw [hL],
        fun h => absurd h hK1⟩

/-! ## The whole body -/

/-- After the `k != 3` block, for every kind. -/
def BgAI (p : Ptrs) (s0 : State σ) (FR ND K : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  r = none ∧ BgF p s0 t ∧ ∃ CB CL PL : BitVec 64, BgL FR ND K CB CL PL t.locals ∧
    (K = 3 → PL = 0) ∧
    (K ≠ 3 → p.hp ≤ CB.toNat ∧ (∃ p1 : Ptrs, ptrsOf t = some p1 ∧ CB.toNat < p1.hp) ∧
      (K = 2 → PL = encLen (ld8W t CB) CL) ∧
      (K = 1 → PL = encLen (ld8W t CB) CL +
        valLen (ld8W t (rd t.memory (ND + 48))) (rd t.memory (ND + 56))))

theorem rd_upd' (m : MemSafe.Mem) (a x b : BitVec 64) :
    rd (Spec.Inv.upd m a x) b = if b = a then x else rd m b := Spec.Inv.rd_upd m a x b

/-- A word store `st x + k, e` with `x = FR`, `e = V` (locals kept). -/
theorem hoare_store_fr {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {FR V : BitVec 64} {k : Nat} {e : ExpHOL 64}
    (hfr : ∀ t, P t → t.locals.lookup (nm "fr") = some (.val (.word FR)))
    (he : ∀ t, P t → ev t e = some (.val (.word V)))
    (h : ∀ t : State σ, P t →
      Q none { t with memory := Spec.Inv.upd t.memory (FR + BitVec.ofNat 64 k) V }) :
    Hoare σ X P (.store (.op .add [lv (nm "fr"), cw k]) e) Q := by
  refine hoare_store fun t _ hP w v mem hw hv hmem => ?_
  rw [ev_add_cw (hfr t hP) k] at hw
  cases hw
  rw [he t hP] at hv
  cases hv
  obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
  exact h t hP

theorem beginSpec (hC : X.code.lookup = guestCode) : BeginSpec σ X := by
  intro vs body callee rs hl s0 hs hloc r hr v hv FR ND p hvs hp hord hfr1 hfr2 ⟨Nd, htrie, hNd, hrk⟩
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_node_rlp_begin (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hfr0 : s0.locals.lookup (nm "fr") = some (.val (.word FR)) := by rw [hloc]; exact hA
  have hnd0 : s0.locals.lookup (nm "node") = some (.val (.word ND)) := by rw [hloc]; exact hB
  obtain ⟨hshape, -, -, hvsep⟩ := htrie
  obtain ⟨hNb, hNsz, -, -, -⟩ := hshape ND hNd
  have hsp : heapEnd ≤ p.sp := by have := hord.2.2.1; have := hord.2.2.2.1; omega
  have hpE : p.hp ≤ heapEnd := hord.2.1
  have hE := heapEnd_lt'
  have hnsz := nsz_ge (rd s0.memory ND)
  have hse : scratchEnd < 2 ^ 64 := by decide
  have f24 : (FR + BitVec.ofNat 64 24).toNat = FR.toNat + 24 := toNat_add_k (by omega)
  have f32 : (FR + BitVec.ofNat 64 32).toNat = FR.toNat + 32 := toNat_add_k (by omega)
  have f40 : (FR + BitVec.ofNat 64 40).toNat = FR.toNat + 40 := toNat_add_k (by omega)
  -- cells below `heapEnd` are not record cells
  have nrec : ∀ a : BitVec 64, a.toNat < heapEnd → a ≠ FR + BitVec.ofNat 64 24 ∧
      a ≠ FR + BitVec.ofNat 64 32 ∧ a ≠ FR + BitVec.ofNat 64 40 := fun a ha => by
    refine ⟨fun h => ?_, fun h => ?_, fun h => ?_⟩ <;> subst h <;> omega
  set K := rd s0.memory ND with hK
  have H : Hoare σ X (fun t => t = s0) nrbBody (fun r t => ∀ w, r = some (.returned w) →
      AllocKeep s0 t p ∧
      (∀ a, t.memory a ≠ s0.memory a → a = FR + 24 ∨ a = FR + 32 ∨ a = FR + 40 ∨
        Unlive p a.toNat) ∧ RC t FR ND ∧
      (rd t.memory ND ≠ 3 → ∃ p' : Ptrs, ptrsOf t = some p' ∧
        p.hp ≤ (rd t.memory (FR + 24)).toNat ∧ (rd t.memory (FR + 24)).toNat < p'.hp)) := by
    unfold nrbBody
    refine hoare_decL (fun _ _ _ h => h) fun s1 _ hs1 v1 hv1 _ => ?_
    subst s1
    obtain ⟨w0, hw0, -, rfl⟩ := ev_load1_inv' hv1
    rw [ev_add_cw hnd0 0] at hw0
    cases hw0
    have hk0 : ND + BitVec.ofNat 64 0 = ND := by simp
    rw [hk0]
    refine hoare_decL (fun _ _ _ h => h) fun s2 _ hs2 v2 hv2 _ => ?_
    subst hs2; rw [ev_cw] at hv2; cases hv2
    refine hoare_decL (fun _ _ _ h => h) fun s3 _ hs3 v3 hv3 _ => ?_
    subst hs3; rw [ev_cw] at hv3; cases hv3
    refine hoare_decL (fun _ _ _ h => h) fun s4 _ hs4 v4 hv4 _ => ?_
    subst hs4; rw [ev_cw] at hv4; cases hv4
    set t0 := setVarHOLFinite (nm "clen") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "cbuf") (.val (.word (BitVec.ofNat 64 0)))
        (setVarHOLFinite (nm "payload") (.val (.word (BitVec.ofNat 64 0)))
          (setVarHOLFinite (nm "k") (.val (.word K)) s0)))
    have hl0 : BgL FR ND K 0 0 0 t0.locals :=
      ⟨by simp only [t0]; rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
          lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hfr0,
       by simp only [t0]; rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
          lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hnd0,
       by simp only [t0]; rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
          lk_set_ne _ _ (by decide), lk_set_self],
       by simp only [t0]; rw [lk_set_ne _ _ (by decide), lk_set_self]; rfl,
       by simp only [t0]; rw [lk_set_self]; rfl,
       by simp only [t0]; rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]; rfl⟩
    refine hoare_seq (R := BgAI p s0 FR ND K) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, hc⟩ => ?_)
      · by_cases hK3 : K = 3
        · intro t _ ⟨ht, w, hw, hw0⟩
          subst ht
          exact absurd hK3 (notEqual_true (cmp_val_true hw hw0 (ev_lv' hl0.k) (ev_cw _ 3)))
        refine hoare_conseq (nrb_inner hC hp hord) (fun t _ ⟨ht, _⟩ => by
          subst ht; exact ⟨hl0, rfl, rfl, rfl⟩) fun r t _ _ ⟨hr, hf, CB, CL, PL, hl, h1, _, h3, h4, h5⟩ =>
            ⟨hr, hf, CB, CL, PL, hl, fun hk3 => absurd hk3 hK3, fun _ => ⟨h1, h3, h4, h5⟩⟩
      · subst ht
        have hK3 : K = 3 := notEqual_false (cmp_val_false hc (ev_lv' hl0.k) (ev_cw _ 3))
        refine ⟨rfl, ⟨fun _ _ => rfl, rfl, ⟨p, hp, hord, le_rfl⟩, fun a ha => absurd rfl ha⟩, 0, 0, 0,
          hl0, fun _ => rfl, fun h => absurd hK3 h⟩
    -- the state before the stores
    let S0' : BitVec 64 → BitVec 64 → BitVec 64 → State σ → Prop := fun CB CL PL t =>
      BgF p s0 t ∧ BgL FR ND K CB CL PL t.locals ∧
      (K = 3 → PL = 0) ∧ (K ≠ 3 → p.hp ≤ CB.toNat ∧ (∃ p1 : Ptrs, ptrsOf t = some p1 ∧ CB.toNat < p1.hp) ∧
        (K = 2 → PL = encLen (ld8W t CB) CL) ∧
        (K = 1 → PL = encLen (ld8W t CB) CL +
          valLen (ld8W t (rd t.memory (ND + 48))) (rd t.memory (ND + 56))))
    refine hoare_pre (P := fun t => ∃ CB CL PL, S0' CB CL PL t) ?_
      fun t _ ⟨_, hf, CB, CL, PL, hl, h3, hn3⟩ => ⟨CB, CL, PL, hf, hl, h3, hn3⟩
    refine hoare_exists fun CB => hoare_exists fun CL => hoare_exists fun PL => ?_
    let S0 : State σ → Prop := S0' CB CL PL
    let a24 := FR + BitVec.ofNat 64 24
    let a32 := FR + BitVec.ofNat 64 32
    let a40 := FR + BitVec.ofNat 64 40
    have e24' : a24.toNat = FR.toNat + 24 := f24
    have e32' : a32.toNat = FR.toNat + 32 := f32
    have e40' : a40.toNat = FR.toNat + 40 := f40
    let Sk : (MemSafe.Mem → MemSafe.Mem) → State σ → Prop := fun f t => ∃ t0 : State σ, S0 t0 ∧
      t.locals = t0.locals ∧ t.globals = t0.globals ∧ t.be = t0.be ∧ t.memory = f t0.memory
    have st1 : Hoare σ X S0 (.store (.op .add [lv (nm "fr"), cw 24]) (lv (nm "cbuf")))
        (fun r t => r = none ∧ Sk (fun m => Spec.Inv.upd m a24 CB) t) :=
      hoare_store_fr (fun t h => h.2.1.fr) (fun t h => ev_lv' h.2.1.cbuf)
        fun t h => ⟨rfl, t, h, rfl, rfl, rfl, rfl⟩
    have st2 : Hoare σ X (Sk (fun m => Spec.Inv.upd m a24 CB))
        (.store (.op .add [lv (nm "fr"), cw 32]) (lv (nm "clen")))
        (fun r t => r = none ∧ Sk (fun m => Spec.Inv.upd (Spec.Inv.upd m a24 CB) a32 CL) t) :=
      hoare_store_fr (fun t ⟨t0, h0, hl, _⟩ => by rw [hl]; exact h0.2.1.fr)
        (fun t ⟨t0, h0, hl, _⟩ => ev_lv' (by rw [hl]; exact h0.2.1.clen))
        fun t ⟨t0, h0, hl, hg, hb, hm⟩ => ⟨rfl, t0, h0, hl, hg, hb, by
          show Spec.Inv.upd t.memory _ _ = _; rw [hm]⟩
    have st3 : Hoare σ X (Sk (fun m => Spec.Inv.upd (Spec.Inv.upd m a24 CB) a32 CL))
        (.store (.op .add [lv (nm "fr"), cw 40]) (lv (nm "payload")))
        (fun r t => r = none ∧
          Sk (fun m => Spec.Inv.upd (Spec.Inv.upd (Spec.Inv.upd m a24 CB) a32 CL) a40 PL) t) :=
      hoare_store_fr (fun t ⟨t0, h0, hl, _⟩ => by rw [hl]; exact h0.2.1.fr)
        (fun t ⟨t0, h0, hl, _⟩ => ev_lv' (by rw [hl]; exact h0.2.1.payload))
        fun t ⟨t0, h0, hl, hg, hb, hm⟩ => ⟨rfl, t0, h0, hl, hg, hb, by
          show Spec.Inv.upd t.memory _ _ = _; rw [hm]⟩
    refine hoare_seqN st1 (hoare_seqN st2 (hoare_seqN st3 ?_))
    refine hoare_return fun t _ hSk w _ => fun w' _ => ?_
    obtain ⟨t0, ⟨⟨g1, g2, ⟨p1, hp1, ho1, hh1⟩, g4⟩, hl, h3, hn3⟩, _, hg, hb, hm⟩ := hSk
    -- the exit state `emptyLocalsHOLFinite t`
    have hmE : (emptyLocalsHOLFinite t).memory =
        Spec.Inv.upd (Spec.Inv.upd (Spec.Inv.upd t0.memory a24 CB) a32 CL) a40 PL := hm
    have hgE : (emptyLocalsHOLFinite t).globals = t0.globals := hg
    have hbE : (emptyLocalsHOLFinite t).be = t0.be := hb
    have hpE : ptrsOf (emptyLocalsHOLFinite t) = some p1 := by rw [ptrsOf_frame hgE]; exact hp1
    -- reads below `heapEnd` see `t0`
    have rdlow : ∀ a : BitVec 64, a.toNat < heapEnd →
        rd (emptyLocalsHOLFinite t).memory a = rd t0.memory a ∧
        (emptyLocalsHOLFinite t).memory a = t0.memory a := fun a ha => by
      obtain ⟨n1, n2, n3⟩ := nrec a ha
      rw [hmE]
      exact ⟨by rw [rd_upd', if_neg n3, rd_upd', if_neg n2, rd_upd', if_neg n1],
        by rw [Spec.Inv.upd_ne n3, Spec.Inv.upd_ne n2, Spec.Inv.upd_ne n1]⟩
    have n24 := nrec
    have r40 : rd (emptyLocalsHOLFinite t).memory a40 = PL := by rw [hmE, rd_upd', if_pos rfl]
    have r32 : rd (emptyLocalsHOLFinite t).memory a32 = CL := by
      rw [hmE, rd_upd', if_neg (fun h => by have := congrArg BitVec.toNat h; omega), rd_upd', if_pos rfl]
    have r24 : rd (emptyLocalsHOLFinite t).memory a24 = CB := by
      rw [hmE, rd_upd', if_neg (fun h => by have := congrArg BitVec.toNat h; omega), rd_upd',
        if_neg (fun h => by have := congrArg BitVec.toNat h; omega), rd_upd', if_pos rfl]
    -- node cells are below the entry `heap_ptr`, hence unchanged
    have hND : ∀ k : Nat, k < nsz K → rd (emptyLocalsHOLFinite t).memory (ND + BitVec.ofNat 64 k) =
        rd s0.memory (ND + BitVec.ofNat 64 k) := fun k hk => by
      have e := toNat_add_k (a := ND) (k := k) (by omega)
      rw [(rdlow _ (by omega)).1]
      exact rd_eq (by_contra fun hne => by have := (g4 _ hne).1; omega)
    have hNDK : rd (emptyLocalsHOLFinite t).memory ND = K := by
      have := hND 0 (by omega); simpa using this
    refine ⟨⟨p1, hpE, ho1, hh1, ?_, ?_, ?_⟩, fun a ha => ?_, ⟨fun hk => ?_, fun hk => ?_, fun hk => ?_⟩,
      fun hk => ?_⟩
    · exact ptrs_sp_eq hp hpE (by rw [hgE]; exact g1 _ (by decide))
    · unfold MemSafe.gword; rw [hgE, g1 _ (by decide)]
    · unfold MemSafe.gword; rw [hgE, g1 _ (by decide)]
    · by_cases e24 : a = a24
      · exact Or.inl e24
      by_cases e32 : a = a32
      · exact Or.inr (Or.inl e32)
      by_cases e40 : a = a40
      · exact Or.inr (Or.inr (Or.inl e40))
      refine Or.inr (Or.inr (Or.inr ?_))
      have ha' : t0.memory a ≠ s0.memory a := by
        rw [hmE, Spec.Inv.upd_ne e40, Spec.Inv.upd_ne e32, Spec.Inv.upd_ne e24] at ha; exact ha
      have := g4 a ha'
      exact ⟨fun h => by omega, fun h => by omega⟩
    · rw [hNDK] at hk; exact r40.trans (h3 hk)
    · rw [hNDK] at hk
      obtain ⟨-, ⟨p1', hp1', hlt⟩, h2, -⟩ := hn3 (by rw [hk]; decide)
      rw [hp1] at hp1'; cases hp1'
      have hal : (panByteAlignHOL CB).toNat < heapEnd := by
        rw [MemSafe.Helpers.byteAlign_toNat]; have := ho1.2.1; omega
      rw [show (FR + 40 : BitVec 64) = a40 from rfl, r40, show (FR + 24 : BitVec 64) = a24 from rfl, r24,
        show (FR + 32 : BitVec 64) = a32 from rfl, r32, ld8W_congr hbE (rdlow _ hal).2]
      exact h2 hk
    · rw [hNDK] at hk
      obtain ⟨-, ⟨p1', hp1', hlt⟩, -, h1⟩ := hn3 (by rw [hk]; decide)
      rw [hp1] at hp1'; cases hp1'
      have hal : (panByteAlignHOL CB).toNat < heapEnd := by
        rw [MemSafe.Helpers.byteAlign_toNat]; have := ho1.2.1; omega
      have hsz : nsz K = 64 := by rw [hk]; exact nsz_1
      have e48 := toNat_add_k (a := ND) (k := 48) (by omega)
      have e56 := toNat_add_k (a := ND) (k := 56) (by omega)
      have r48 := (rdlow (ND + BitVec.ofNat 64 48) (by omega)).1
      have r56 := (rdlow (ND + BitVec.ofNat 64 56) (by omega)).1
      have s48 : rd t0.memory (ND + BitVec.ofNat 64 48) = rd s0.memory (ND + BitVec.ofNat 64 48) :=
        rd_eq (by_contra fun hne => by have := (g4 _ hne).1; omega)
      have s56 : rd t0.memory (ND + BitVec.ofNat 64 56) = rd s0.memory (ND + BitVec.ofNat 64 56) :=
        rd_eq (by_contra fun hne => by have := (g4 _ hne).1; omega)
      have hVA : ValAl p.hp (rd s0.memory (ND + BitVec.ofNat 64 48))
          (rd s0.memory (ND + BitVec.ofNat 64 56)) := (hvsep ND hNd).1 hk
      have h1' : PL = encLen (ld8W t0 CB) CL + valLen (ld8W t0 (rd t0.memory (ND + BitVec.ofNat 64 48)))
          (rd t0.memory (ND + BitVec.ofNat 64 56)) := h1 hk
      show rd _ a40 = encLen (ld8W _ (rd _ a24)) (rd _ a32) +
        valLen (ld8W _ (rd _ (ND + BitVec.ofNat 64 48))) (rd _ (ND + BitVec.ofNat 64 56))
      rw [r40, r24, r32, ld8W_congr hbE (rdlow _ hal).2, r48, r56, h1']
      congr 1
      by_cases hz : rd t0.memory (ND + BitVec.ofNat 64 56) = 0
      · rw [hz, valLen_zero, valLen_zero]
      · have hz' : rd s0.memory (ND + BitVec.ofNat 64 56) ≠ 0 := by rw [← s56]; exact hz
        obtain ⟨-, hv2⟩ := hVA hz'
        rw [← s48] at hv2
        rw [ld8W_congr hbE (rdlow _ (by omega)).2]
    · rw [hNDK] at hk
      obtain ⟨hpq, ⟨p1', hp1', hlt⟩, -⟩ := hn3 hk
      rw [hp1] at hp1'; cases hp1'
      exact ⟨p1, hpE, by rw [show (FR + 24 : BitVec 64) = a24 from rfl, r24]; exact hpq,
        by rw [show (FR + 24 : BitVec 64) = a24 from rfl, r24]; exact hlt⟩
  have := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr] at this
  exact this v (by rw [hv])

end InitECandidate.Solver.Spec.Mpt.Leaves
