import InitECandidate.Solver.MemSafe.Trie.BeginG
import InitECandidate.Solver.MemSafe.Trie.Pg
import InitECandidate.Solver.MemSafe.Trie.Nlc

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `_node_rlp_begin`: the compact length stored in the record

`beginClen`: a returning `_node_rlp_begin(fr, nd)` leaves `rd (fr + 32) < 2^33` when the nibble length of a
leaf / extension node is `< 2^32` (the stored length is `nibble_list_to_compact`'s result, at most `nlen / 2 + 1`;
`0` for a branch).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- Locals of the begin body with a bound on `clen`. -/
def LB (FR ND K : BitVec 64) (B : Nat) (m : Locals) : Prop :=
  LBg FR ND m ∧ m.lookup (nm "k") = some (.val (.word K)) ∧
    ∃ c : BitVec 64, m.lookup (nm "clen") = some (.val (.word c)) ∧ c.toNat ≤ B

theorem lb_upd {FR ND K : BitVec 64} {B : Nat} {m : Locals} (h : LB FR ND K B m) {x : MlS}
    (h1 : x ≠ nm "fr") (h2 : x ≠ nm "node") (h3 : x ≠ nm "cbuf") (h4 : x ≠ nm "clen")
    (h5 : x ≠ nm "payload") (h6 : x ≠ nm "k") (v : ValueHOL 64) : LB FR ND K B (m.update (x, v)) := by
  obtain ⟨hb, hk, c, hc, hcb⟩ := h
  exact ⟨lbg_other hb h1 h2 h3 h4 h5 v, by rw [lookup_update_ne _ _ h6]; exact hk, c,
    by rw [lookup_update_ne _ _ h4]; exact hc, hcb⟩

theorem lb_res {FR ND K : BitVec 64} {B : Nat} {m : Locals} (h : LB FR ND K B m) {x : MlS}
    (old : Option (ValueHOL 64)) (h1 : x ≠ nm "fr") (h2 : x ≠ nm "node") (h3 : x ≠ nm "cbuf")
    (h4 : x ≠ nm "clen") (h5 : x ≠ nm "payload") (h6 : x ≠ nm "k") :
    LB FR ND K B (m.resVarEq (x, old)) := by
  obtain ⟨hb, hk, c, hc, hcb⟩ := h
  exact ⟨lbg_res hb old h1 h2 h3 h4 h5, by rw [lookup_resVarEq_ne _ _ h6]; exact hk, c,
    by rw [lookup_resVarEq_ne _ _ h4]; exact hc, hcb⟩

theorem lb_cbuf {FR ND K : BitVec 64} {B : Nat} {m : Locals} (h : LB FR ND K B m) (q : BitVec 64) :
    LB FR ND K B (m.update (nm "cbuf", .val (.word q))) := by
  obtain ⟨hb, hk, c, hc, hcb⟩ := h
  refine ⟨⟨?_, ?_, ⟨q, lookup_update_self _ _ _⟩, ?_, ?_⟩, ?_, c, ?_, hcb⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact hb.fr
  · rw [lookup_update_ne _ _ (by decide)]; exact hb.node
  · obtain ⟨d, hd⟩ := hb.clen; exact ⟨d, by rw [lookup_update_ne _ _ (by decide)]; exact hd⟩
  · obtain ⟨d, hd⟩ := hb.payload; exact ⟨d, by rw [lookup_update_ne _ _ (by decide)]; exact hd⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact hk
  · rw [lookup_update_ne _ _ (by decide)]; exact hc

theorem lb_payload {FR ND K : BitVec 64} {B : Nat} {m : Locals} (h : LB FR ND K B m) (q : BitVec 64) :
    LB FR ND K B (m.update (nm "payload", .val (.word q))) := by
  obtain ⟨hb, hk, c, hc, hcb⟩ := h
  refine ⟨⟨?_, ?_, ?_, ?_, ⟨q, lookup_update_self _ _ _⟩⟩, ?_, c, ?_, hcb⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact hb.fr
  · rw [lookup_update_ne _ _ (by decide)]; exact hb.node
  · obtain ⟨d, hd⟩ := hb.cbuf; exact ⟨d, by rw [lookup_update_ne _ _ (by decide)]; exact hd⟩
  · obtain ⟨d, hd⟩ := hb.clen; exact ⟨d, by rw [lookup_update_ne _ _ (by decide)]; exact hd⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact hk
  · rw [lookup_update_ne _ _ (by decide)]; exact hc

theorem lb_clen {FR ND K : BitVec 64} {B : Nat} {m : Locals} (h : LB FR ND K B m) (q : BitVec 64)
    (hq : q.toNat ≤ B) : LB FR ND K B (m.update (nm "clen", .val (.word q))) := by
  obtain ⟨hb, hk, c, hc, hcb⟩ := h
  refine ⟨⟨?_, ?_, ?_, ⟨q, lookup_update_self _ _ _⟩, ?_⟩, ?_, q, lookup_update_self _ _ _, hq⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact hb.fr
  · rw [lookup_update_ne _ _ (by decide)]; exact hb.node
  · obtain ⟨d, hd⟩ := hb.cbuf; exact ⟨d, by rw [lookup_update_ne _ _ (by decide)]; exact hd⟩
  · obtain ⟨d, hd⟩ := hb.payload; exact ⟨d, by rw [lookup_update_ne _ _ (by decide)]; exact hd⟩
  · rw [lookup_update_ne _ _ (by decide)]; exact hk

/-- Result of the body: a returned run leaves the bounded compact length in the record. -/
def Qb (FR : BitVec 64) (B : Nat) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ w, r = some (.returned w) → (rd t.memory (FR + BitVec.ofNat 64 32)).toNat ≤ B

theorem qb_of_pg {S : State σ → Prop} {FR : BitVec 64} {B : Nat} {r : Option (PanSemResultExact 64)}
    {t : State σ} (hr : r ≠ none) (h : PG S (fun _ => True) r t) : Qb FR B r t := by
  intro w hw
  obtain ⟨r', hr'⟩ : ∃ r', r = some r' := by
    cases r with
    | none => exact absurd rfl hr
    | some r' => exact ⟨r', rfl⟩
  have := (h.2 r' hr').1
  subst hw
  cases hr'
  rcases this with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h

theorem trivSpec {f : MlS} : FunSpec σ X f (fun _ _ _ _ => True) :=
  fun _ _ _ _ _ _ _ _ _ _ => trivial

/-- The begin body. -/
theorem beginBody_clen (hC : X.code.lookup = guestCode) {s0 : State σ} (hs : InCtx s0 X)
    {FR ND : BitVec 64} {p : Ptrs} (hp : ptrsOf s0 = some p) (ho : p.Ordered)
    (hfr0 : s0.locals.lookup (nm "fr") = some (.val (.word FR)))
    (hnd0 : s0.locals.lookup (nm "node") = some (.val (.word ND))) :
    HoareG σ X (fun t => t = s0) nrbBody
      (Qb FR (if rd s0.memory ND = 3 then 0 else (rd s0.memory (ND + BitVec.ofNat 64 40)).toNat / 2 + 1)) := by
  set K := rd s0.memory ND with hK
  set Bd : Nat := if K = 3 then 0 else (rd s0.memory (ND + BitVec.ofNat 64 40)).toNat / 2 + 1 with hBd
  set N0 := rd s0.memory (ND + BitVec.ofNat 64 40) with hN0
  unfold nrbBody
  refine hoareG_decL (fun _ _ _ h => h) fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  obtain ⟨w0, hw0, -, rfl⟩ := ev_load1_inv' hv1
  rw [ev_add_cw hnd0 0] at hw0
  cases hw0
  have hk0 : ND + BitVec.ofNat 64 0 = ND := by simp
  rw [hk0]
  refine hoareG_decL (fun _ _ _ h => h) fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2; rw [ev_cw] at hv2; cases hv2
  refine hoareG_decL (fun _ _ _ h => h) fun s3 _ hs3 v3 hv3 _ => ?_
  subst hs3; rw [ev_cw] at hv3; cases hv3
  refine hoareG_decL (fun _ _ _ h => h) fun s4 _ hs4 v4 hv4 _ => ?_
  subst hs4; rw [ev_cw] at hv4; cases hv4
  let PS0 : State σ → Prop := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
    LB FR ND K Bd t.locals
  let S2 : State σ → Prop := fun t => LB FR ND K Bd t.locals
  refine hoareG_pre (P := PS0) ?_ (fun t _ ht => by
    subst ht
    refine ⟨rfl, rfl, ⟨?_, ?_, ⟨0, ?_⟩, ⟨0, ?_⟩, ⟨0, ?_⟩⟩, ?_, 0, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]; exact hfr0
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]; exact hnd0
    · rw [lk_set_ne _ _ (by decide), lk_set_self]; rfl
    · rw [lk_set_self]; rfl
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]; rfl
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_self]
    · rw [lk_set_self]; rfl
    · simp)
  refine hoareG_seq (R := PG S2 (fun _ => True)) ?_ (fun r t _ hr _ h => qb_of_pg hr h) ?_
  swap
  · -- the three stores and the return
    refine hoareG_pre (P := S2) ?_ (fun t _ h => h.1 rfl)
    refine hoareG_seq (R := PG S2 (fun _ => True)) ?_ (fun r t _ hr _ h => qb_of_pg hr h) ?_
    · refine hoareG_store fun s _ hP w v mem hw hv hmem => ?_
      exact pg_none hP
    refine hoareG_pre (P := S2) ?_ (fun t _ h => h.1 rfl)
    let S3 : State σ → Prop := fun t => LB FR ND K Bd t.locals ∧
      (rd t.memory (FR + BitVec.ofNat 64 32)).toNat ≤ Bd
    refine hoareG_seq (R := PG S3 (fun _ => True)) ?_ (fun r t _ hr _ h => qb_of_pg hr h) ?_
    · refine hoareG_store fun s _ hP w v mem hw hv hmem => ?_
      rw [ev_add2 (ev_lw hP.1.fr) (ev_cw s 32)] at hw
      cases hw
      obtain ⟨c, hc, hcb⟩ := hP.2.2
      rw [ev_lw hc] at hv
      cases hv
      obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
      refine pg_none ⟨hP, ?_⟩
      show (rd (Spec.Inv.upd s.memory _ _) _).toNat ≤ Bd
      rw [rd_upd', if_pos rfl]
      exact hcb
    refine hoareG_pre (P := S3) ?_ (fun t _ h => h.1 rfl)
    refine hoareG_seq (R := PG S3 (fun _ => True)) ?_ (fun r t _ hr _ h => qb_of_pg hr h) ?_
    · refine hoareG_store fun s _ hP w v mem hw hv hmem => ?_
      rw [ev_add2 (ev_lw hP.1.1.fr) (ev_cw s 40)] at hw
      cases hw
      obtain ⟨c, hc⟩ := hP.1.1.payload
      rw [ev_lw hc] at hv
      cases hv
      obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
      refine pg_none ⟨hP.1, ?_⟩
      show (rd (Spec.Inv.upd s.memory _ _) _).toNat ≤ Bd
      rw [rd_upd', if_neg]
      · exact hP.2
      · intro h
        have := congrArg BitVec.toNat h
        rw [show FR + BitVec.ofNat 64 32 = FR + 32 from rfl] at this
        revert this
        bv_omega
    · refine hoareG_pre (P := S3) ?_ (fun t _ h => h.1 rfl)
      refine hoareG_return fun s _ hP v hv => ?_
      intro w hw
      exact hP.2
  · refine hoareG_ite ?_ ?_
    swap
    · exact hoareG_skip fun s _ h => pg_none h.1.2.2
    refine hoareG_pre (P := fun s => PS0 s ∧ K ≠ 3) ?_ (fun s _ h => by
      obtain ⟨hP, w, hw, hw0⟩ := h
      refine ⟨hP, ?_⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv, hP.2.2.2.1] at hx; rw [ev_cw] at hy
      cases hx; cases hy
      exact notEqual_true hxy)
    have hBd' : ∀ _ : K ≠ 3, Bd = N0.toNat / 2 + 1 := fun h => by rw [hBd, if_neg h]
    unfold nrbInner
    have lbr : ∀ (x : MlS), x ≠ nm "fr" → x ≠ nm "node" → x ≠ nm "cbuf" → x ≠ nm "clen" →
        x ≠ nm "payload" → x ≠ nm "k" → ∀ t : State σ, LB FR ND K Bd t.locals → ∀ old,
        LB FR ND K Bd (t.locals.resVarEq (x, old)) := fun x h1 h2 h3 h4 h5 h6 t h old =>
      lb_res h old h1 h2 h3 h4 h5 h6
    -- `var nlen = lds (node + 40)`
    refine hoareG_decP (Sin := S2) (fun t h old => lbr _ (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) t h old) (fun _ _ _ => trivial) ?_
    intro s hs hPK v hv hsh
    obtain ⟨hP, hK3⟩ := hPK
    obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv
    rw [ev_add_cw hP.2.2.1.node 40] at hw
    cases hw
    have hmem : s.memory = s0.memory := hP.1
    let PS1 : State σ → Prop := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      LB FR ND K Bd t.locals ∧ t.locals.lookup (nm "nlen") = some (.val (.word N0))
    refine hoareG_preP (P := PS1) ?_ (fun t ht => by
      subst ht
      refine ⟨hP.1, hP.2.1, lb_upd hP.2.2 (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) _, ?_⟩
      rw [hmem] at *
      exact lk_set_self _ _ _)
    -- `cbuf = alloc(nlen / 2 + 2)`
    let PS2 : State σ → Prop := fun t => t.memory = s0.memory ∧ LB FR ND K Bd t.locals ∧
      t.locals.lookup (nm "nlen") = some (.val (.word N0))
    refine hoareG_seqP (S1 := PS2) ?_ ?_
    · refine hoareG_callAP (allocP_heap hC) ?_ (fun _ _ _ _ _ _ _ _ _ _ _ => trivial)
      intro s' hs' hP' vs hvs callee v st hR hst hval
      have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some p := by
        show ptrsOf s' = some p
        rw [ptrsOf_frame hP'.2.1]; exact hp
      obtain ⟨hm, -⟩ := hR (by simp [Good]) p hpe ho
      obtain ⟨c, hc⟩ := hP'.2.2.1.1.cbuf
      obtain ⟨q, rfl⟩ := word_of_valid hval hc
      refine ⟨hm.trans hP'.1, lb_cbuf hP'.2.2.1 _, ?_⟩
      show (s'.locals.update (nm "cbuf", _)).lookup (nm "nlen") = _
      rw [lookup_update_ne _ _ (by decide)]; exact hP'.2.2.2
    -- `var isl = 0; ...`
    refine hoareG_decP (Sin := S2) (fun t h old => lbr _ (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) t h old) (fun _ _ _ => trivial) ?_
    intro s2 hs2 hP2 v2 hv2 hsh2
    rw [ev_cw] at hv2; cases hv2
    let PS3 : State σ → Prop := fun t => LB FR ND K Bd t.locals ∧
      t.locals.lookup (nm "nlen") = some (.val (.word N0)) ∧
      ∃ b : BitVec 64, t.locals.lookup (nm "isl") = some (.val (.word b))
    refine hoareG_preP (P := PS3) ?_ (fun t ht => by
      subst ht
      refine ⟨lb_upd hP2.2.1 (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) _, (by rw [lk_set_ne _ _ (by decide)]; exact hP2.2.2), _, lk_set_self _ _ _⟩)
    refine hoareG_seqP (S1 := PS3) ?_ ?_
    · refine hoareG_ite ?_ ?_
      · exact hoareG_assign fun s3 _ hP3 v3 hv3 _ => by
          rw [ev_cw] at hv3; cases hv3
          exact pg_none ⟨lb_upd hP3.1.1 (by decide)
          (by decide) (by decide) (by decide) (by decide) (by decide) _, (by
            rw [lk_set_ne _ _ (by decide)]; exact hP3.1.2.1), _, lk_set_self _ _ _⟩
      · exact hoareG_skip fun s3 _ hP3 => pg_none hP3.1
    -- `clen = nibble_list_to_compact(...)`
    refine hoareG_seqP (S1 := S2) ?_ ?_
    · refine hoareG_callAP (nlc_ret hC) ?_ (fun _ _ _ _ _ _ _ _ _ _ _ => trivial)
      intro s3 hs3 hP3 vs hvs callee v st hR hst hval
      obtain ⟨c, hc⟩ := hP3.1.1.clen
      obtain ⟨w, rfl⟩ := word_of_valid hval hc
      obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs4_inv hvs
      have h2 : v2 = .val (.word N0) := Option.some.inj (e2.symm.trans (ev_lv' hP3.2.1))
      subst h2
      obtain ⟨NB, hNB⟩ : ∃ NB, v1 = .val (.word NB) := by
        obtain ⟨w', -, -, h⟩ := ev_load1_inv' e1
        exact ⟨_, h⟩
      obtain ⟨IL, hIL⟩ : ∃ IL, v3 = .val (.word IL) := by
        obtain ⟨b, hb⟩ := hP3.2.2
        exact ⟨b, Option.some.inj (e3.symm.trans (ev_lv' hb))⟩
      obtain ⟨D, hD⟩ : ∃ D, v4 = .val (.word D) := by
        obtain ⟨b, hb⟩ := hP3.1.1.cbuf
        exact ⟨b, Option.some.inj (e4.symm.trans (ev_lv' hb))⟩
      obtain ⟨o, hov, hob⟩ := hR (by simp [Good]) (.val (.word w)) rfl NB N0 IL D (by rw [hNB, hIL, hD])
      cases hov
      show LB FR ND K Bd (s3.locals.update (nm "clen", _))
      exact lb_clen hP3.1 _ (by rw [hBd' hK3]; exact hob)
    -- `var el = rlp_bytes_encoded_len(...); payload = el; if k == 1 { var vl = ...; payload = payload + vl }`
    let Sel : State σ → Prop := fun t => LB FR ND K Bd t.locals ∧
      ∃ e : BitVec 64, t.locals.lookup (nm "el") = some (.val (.word e))
    refine hoareG_decCallP (trivSpec (f := nm "rlp_bytes_encoded_len")) (Sin := Sel) (S := S2)
      (fun t h old => lbr _ (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) t h.1 old) (fun _ _ _ => trivial) ?_
      (fun _ _ _ _ _ _ _ _ _ _ _ => trivial)
    intro s4 hs4 hP4 vs hvs callee v st hR hst hsh
    obtain ⟨e, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoareG_preP (P := Sel) ?_ (fun t ht => by
      subst ht
      exact ⟨lb_upd hP4 (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) _, e, lk_set_self _ _ _⟩)
    refine hoareG_seqP (S1 := Sel) ?_ ?_
    · refine hoareG_assign fun s5 _ hP5 v5 hv5 _ => ?_
      obtain ⟨e', he'⟩ := hP5.2
      rw [ev_lv' he'] at hv5; cases hv5
      exact pg_none ⟨lb_payload hP5.1 _, e', by rw [lk_set_ne _ _ (by decide)]; exact he'⟩
    · refine hoareG_ite ?_ ?_
      swap
      · exact hoareG_skip fun s5 _ hP5 => pg_none hP5.1
      · let Svl : State σ → Prop := fun t => Sel t ∧
          ∃ b : BitVec 64, t.locals.lookup (nm "vl") = some (.val (.word b))
        refine hoareG_decCallP (trivSpec (f := nm "rlp_value_encoded_len")) (Sin := Sel) (S := Sel)
          (fun t h old => ⟨lbr _ (by decide) (by decide) (by decide) (by decide) (by decide)
            (by decide) t h.1 old, by
              obtain ⟨e', he'⟩ := h.2
              exact ⟨e', by rw [lookup_resVarEq_ne _ _ (by decide)]; exact he'⟩⟩)
          (fun _ _ _ => trivial) ?_ (fun _ _ _ _ _ _ _ _ _ _ _ => trivial)
        intro s6 hs6 hP6 vs' hvs' callee' v' st' hR' hst' hsh'
        obtain ⟨b, rfl⟩ := val_of_shapeEq_one' hsh'
        refine hoareG_preP (P := fun t => Sel t ∧
          ∃ b' : BitVec 64, t.locals.lookup (nm "vl") = some (.val (.word b'))) ?_ (fun t ht => by
          subst ht
          obtain ⟨e', he'⟩ := hP6.1.2
          exact ⟨⟨lb_upd hP6.1.1 (by decide) (by decide) (by decide) (by decide) (by decide)
            (by decide) _, e', by rw [lk_set_ne _ _ (by decide)]; exact he'⟩, b, lk_set_self _ _ _⟩)
        refine hoareG_assign fun s7 _ hP7 v7 hv7 _ => ?_
        obtain ⟨c3, h3⟩ := hP7.1.1.1.payload
        obtain ⟨b', hb'⟩ := hP7.2
        rw [ev_add2 (ev_lw h3) (ev_lw hb')] at hv7
        cases hv7
        obtain ⟨e', he'⟩ := hP7.1.2
        exact pg_none ⟨lb_payload hP7.1.1 _, e', by rw [lk_set_ne _ _ (by decide)]; exact he'⟩

/-- **The compact length in the record.** -/
theorem beginClen (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "_node_rlp_begin") (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ (fr nd : BitVec 64) (p : Ptrs), vs = [.val (.word fr), .val (.word nd)] →
        ptrsOf s = some p → p.Ordered →
        (rd s.memory nd ≠ 3 → (rd s.memory (nd + 40)).toNat ≤ 2 ^ 32) →
        (rd t.memory (fr + 32)).toNat < 2 ^ 33) := by
  intro vs body callee rs hl s0 hs hloc r hr hg v hv FR ND p hvs hp ho hlen
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA0, hB0⟩ := lookupCode_two code_node_rlp_begin (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hfr0 : s0.locals.lookup (nm "fr") = some (.val (.word FR)) := by rw [hloc]; exact hA0
  have hnd0 : s0.locals.lookup (nm "node") = some (.val (.word ND)) := by rw [hloc]; exact hB0
  have H := beginBody_clen hC hs hp ho hfr0 hnd0 s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at H
  have h2 := H v (by rw [hv])
  refine lt_of_le_of_lt h2 ?_
  split
  · decide
  · rename_i hK3
    have h40 : (rd s0.memory (ND + 40)).toNat ≤ 2 ^ 32 := hlen hK3
    have h41 : (rd s0.memory (ND + BitVec.ofNat 64 40)).toNat ≤ 2 ^ 32 := h40
    omega

end InitECandidate.Solver.MemSafe.Trie
