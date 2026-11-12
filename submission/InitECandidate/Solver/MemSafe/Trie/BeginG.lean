import InitECandidate.Solver.MemSafe.Trie.Finish
import InitECandidate.Solver.MemSafe.MptH.ListCompact

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `_node_rlp_begin`: the exception-inclusive footprint
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- The cells `_node_rlp_begin(fr, ·)` may write, with the heap pointer `hp` reached. -/
def WBg (fr : BitVec 64) (hp0 : Nat) (hp : Nat) (a : BitVec 64) : Prop :=
  a = fr + BitVec.ofNat 64 24 ∨ a = fr + BitVec.ofNat 64 32 ∨ a = fr + BitVec.ofNat 64 40 ∨
    (hp0 ≤ a.toNat ∧ a.toNat < hp)

theorem wBg_mono {fr : BitVec 64} {hp0 : Nat} : ∀ h h' a, h ≤ h' → WBg fr hp0 h a → WBg fr hp0 h' a := by
  intro h h' a hh hw
  rcases hw with hw | hw | hw | ⟨h1, h2⟩
  · exact Or.inl hw
  · exact Or.inr (Or.inl hw)
  · exact Or.inr (Or.inr (Or.inl hw))
  · exact Or.inr (Or.inr (Or.inr ⟨h1, by omega⟩))

/-! ## Callee specs in `FootRetA` form -/

def OrdS (s : State σ) : Prop := ∃ p, ptrsOf s = some p ∧ p.Ordered

theorem footRetA_alloc (hC : X.code.lookup = guestCode) :
    FootRetA σ X (nm "alloc") (fun _ s => OrdS s) (fun _ _ _ => False)
      (fun vs s v => ∃ n q : BitVec 64, vs = [.val (.word n)] ∧ v = .val (.word q) ∧
        q.toNat % 8 = 0 ∧ (∃ p, ptrsOf s = some p ∧ q.toNat = p.hp) ∧
        q.toNat + n.toNat ≤ heapEnd) := by
  have h1 := allocP_heap (σ := σ) (X := X) hC
  have h2 := alloc_ret_hp (σ := σ) (X := X) hC
  intro vs body callee rs hl s hs hloc r hr hg ⟨p, hp, ho⟩
  obtain ⟨hm, hpm, p', hp', hret⟩ := h1 vs body callee rs hl s hs hloc r hr hg p hp ho
  refine ⟨hpm, fun a ha => ?_, fun v hv => ?_⟩
  · exact congrFun hm a
  · obtain ⟨n, q, hvs, hv', hq8, hlive, -⟩ := hret v hv
    obtain ⟨q', hq', hqp⟩ := h2 vs body callee rs hl s hs hloc r hr v hv p hp
    rw [hv'] at hq'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hq'
    subst hq'
    obtain ⟨p1, p2, e1, e2, -, hord2, -⟩ := id hpm
    rw [hp'] at e2; cases e2
    exact ⟨n, q, hvs, hv', hq8, ⟨p, hp, hqp⟩, le_trans hlive.2 hord2.2.1⟩

theorem footRetA_of_footSpec {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} (h : FootSpec σ X f Pre R)
    {Pre' : List (ValueHOL 64) → State σ → Prop}
    (hP : ∀ vs s, Pre' vs s → OrdS s ∧ Pre vs) :
    FootRetA σ X f Pre' (fun vs _ => R vs) (fun _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg hP'
  obtain ⟨⟨p, hp, ho⟩, hpre⟩ := hP vs s hP'
  obtain ⟨hgl, hmod⟩ := h vs body callee rs hl s hs hloc r hr hg hpre
  exact ⟨pmove_of_globals_eq hp ho hgl, hmod, fun _ _ => trivial⟩

theorem footRetA_of_pure {f : MlS}
    (h : FunSpec σ X f (fun _ s r t => Good (some r) → t.globals = s.globals ∧ t.memory = s.memory))
    {Pre' : List (ValueHOL 64) → State σ → Prop} (hP : ∀ vs s, Pre' vs s → OrdS s) :
    FootRetA σ X f Pre' (fun _ _ _ => False) (fun _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg hP'
  obtain ⟨p, hp, ho⟩ := hP vs s hP'
  obtain ⟨hgl, hm⟩ := h vs body callee rs hl s hs hloc r hr hg
  exact ⟨pmove_of_globals_eq hp ho hgl, fun a _ => congrFun hm a, fun _ _ => trivial⟩

theorem word_of_valid {s : State σ} {x : MlS} {v : ValueHOL 64} {c : BitVec 64}
    (h : isValidValueHOLExact s.toExact .local x v = true)
    (hu : s.locals.lookup x = some (.val (.word c))) : ∃ w, v = .val (.word w) := by
  have := valid_local h hu
  exact val_of_shapeEq_one' (by simpa [shapeOfHOLExact] using this)

/-! ## The begin body as `LXA` -/

/-- The locals of the begin body that matter. -/
structure LBg (FR ND : BitVec 64) (m : Locals) : Prop where
  fr : m.lookup (nm "fr") = some (.val (.word FR))
  node : m.lookup (nm "node") = some (.val (.word ND))
  cbuf : ∃ c : BitVec 64, m.lookup (nm "cbuf") = some (.val (.word c))
  clen : ∃ c : BitVec 64, m.lookup (nm "clen") = some (.val (.word c))
  payload : ∃ c : BitVec 64, m.lookup (nm "payload") = some (.val (.word c))

theorem lbg_other {FR ND : BitVec 64} {m : Locals} (h : LBg FR ND m) {x : MlS}
    (h1 : x ≠ nm "fr") (h2 : x ≠ nm "node") (h3 : x ≠ nm "cbuf") (h4 : x ≠ nm "clen")
    (h5 : x ≠ nm "payload") (v : ValueHOL 64) : LBg FR ND (m.update (x, v)) :=
  ⟨by rw [lookup_update_ne _ _ h1]; exact h.fr, by rw [lookup_update_ne _ _ h2]; exact h.node,
   by rw [lookup_update_ne _ _ h3]; exact h.cbuf, by rw [lookup_update_ne _ _ h4]; exact h.clen,
   by rw [lookup_update_ne _ _ h5]; exact h.payload⟩

/-- The cells `_node_rlp_begin(fr, ·)` may write: its record and the free heap. -/
def BR (fr : BitVec 64) (hp0 : Nat) (a : BitVec 64) : Prop :=
  a = fr + BitVec.ofNat 64 24 ∨ a = fr + BitVec.ofNat 64 32 ∨ a = fr + BitVec.ofNat 64 40 ∨
    (hp0 ≤ a.toNat ∧ a.toNat < heapEnd)

structure LFn (FR ND : BitVec 64) (m : Locals) : Prop where
  fr : m.lookup (nm "fr") = some (.val (.word FR))
  node : m.lookup (nm "node") = some (.val (.word ND))

theorem lfn_upd {FR ND : BitVec 64} {m : Locals} (h : LFn FR ND m) {x : MlS} (h1 : x ≠ nm "fr")
    (h2 : x ≠ nm "node") (v : ValueHOL 64) : LFn FR ND (m.update (x, v)) :=
  ⟨by rw [lookup_update_ne _ _ h1]; exact h.fr, by rw [lookup_update_ne _ _ h2]; exact h.node⟩

theorem ordS_of_lpre {Rf : BitVec 64 → Prop} {s0 s : State σ} {L : Locals → Prop}
    (h : LPreA Rf s0 L s) : OrdS s := by
  obtain ⟨p, p', hp, hp', -, ho, -⟩ := h.2.1
  exact ⟨p', hp', ho⟩

theorem shr1_add2 (N : BitVec 64) : ((N >>> (1 : Nat)) + BitVec.ofNat 64 2).toNat = N.toNat / 2 + 2 := by
  have h1 : (N >>> (1 : Nat)).toNat = N.toNat / 2 := by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  have := N.isLt
  rw [BitVec.toNat_add, h1, BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 2) (by omega)]
  exact Nat.mod_eq_of_lt (by omega)

theorem ev_allocArg {s : State σ} {N : BitVec 64} (h : s.locals.lookup (nm "nlen") = some (.val (.word N))) :
    ev s (.op .add [.shift .lsr (lv (nm "nlen")) (cw 1), cw 2]) =
      some (.val (.word ((N >>> (1 : Nat)) + BitVec.ofNat 64 2))) :=
  ev_add2 (WaveHelpers.ev_lsr (ev_lw h) (by decide)) (ev_cw s 2)

theorem lbg_res {FR ND : BitVec 64} {m' : Locals} (h : LBg FR ND m') {x : MlS} (old : Option (ValueHOL 64))
    (h1 : x ≠ nm "fr") (h2 : x ≠ nm "node") (h3 : x ≠ nm "cbuf") (h4 : x ≠ nm "clen")
    (h5 : x ≠ nm "payload") : LBg FR ND (m'.resVarEq (x, old)) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [lookup_resVarEq_ne _ _ h1]; exact h.fr
  · rw [lookup_resVarEq_ne _ _ h2]; exact h.node
  · obtain ⟨c, hc⟩ := h.cbuf; exact ⟨c, by rw [lookup_resVarEq_ne _ _ h3]; exact hc⟩
  · obtain ⟨c, hc⟩ := h.clen; exact ⟨c, by rw [lookup_resVarEq_ne _ _ h4]; exact hc⟩
  · obtain ⟨c, hc⟩ := h.payload; exact ⟨c, by rw [lookup_resVarEq_ne _ _ h5]; exact hc⟩

theorem pure_of_noFoot {f : MlS} {Ret : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : FootRet σ X f (fun _ => True) Helpers.NoFoot Ret) :
    FunSpec σ X f (fun _ s r t => Good (some r) → t.globals = s.globals ∧ t.memory = s.memory) := by
  intro vs body callee rs hl s hs hloc r hr hg
  obtain ⟨hgl, hmod, -⟩ := h vs body callee rs hl s hs hloc r hr hg trivial
  exact ⟨hgl, funext fun a => hmod a (fun h => h)⟩

theorem evs4_inv {s : State σ} {a b c d : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b, c, d] = some vs) : ∃ v1 v2 v3 v4, vs = [v1, v2, v3, v4] ∧ ev s a = some v1 ∧
      ev s b = some v2 ∧ ev s c = some v3 ∧ ev s d = some v4 := by
  obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv h
  obtain ⟨v2, vs2, rfl, e2, q2⟩ := evs_cons_inv q1
  obtain ⟨v3, vs3, rfl, e3, q3⟩ := evs_cons_inv q2
  obtain ⟨v4, vs4, rfl, e4, q4⟩ := evs_cons_inv q3
  have : vs4 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at q4; exact (Option.some.inj q4).symm
  subst this
  exact ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩

/-- The locals after the allocation of the compact buffer. -/
def LDg (FR ND : BitVec 64) (hp0 : Nat) (m : Locals) : Prop :=
  LBg FR ND m ∧ ∃ N Q : BitVec 64, m.lookup (nm "nlen") = some (.val (.word N)) ∧
    m.lookup (nm "cbuf") = some (.val (.word Q)) ∧ hp0 ≤ Q.toNat ∧ Q.toNat % 8 = 0 ∧
    Q.toNat + (N.toNat / 2 + 2) ≤ heapEnd

theorem ldg_upd {FR ND : BitVec 64} {hp0 : Nat} {m : Locals} (h : LDg FR ND hp0 m) {x : MlS}
    (h1 : x ≠ nm "fr") (h2 : x ≠ nm "node") (h3 : x ≠ nm "cbuf") (h4 : x ≠ nm "clen")
    (h5 : x ≠ nm "payload") (h6 : x ≠ nm "nlen") (v : ValueHOL 64) : LDg FR ND hp0 (m.update (x, v)) := by
  obtain ⟨hb, N, Q, hN, hQ, hp, hq8, hqe⟩ := h
  exact ⟨lbg_other hb h1 h2 h3 h4 h5 v, N, Q, by rw [lookup_update_ne _ _ h6]; exact hN,
    by rw [lookup_update_ne _ _ h3]; exact hQ, hp, hq8, hqe⟩

theorem beginFootH (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hX0 : DomBounded X) {s0 : State σ} {p : Ptrs} {FR ND : BitVec 64}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) (hfr : LFn FR ND s0.locals)
    (hf1 : heapEnd ≤ FR.toNat) (hf2 : FR.toNat + 48 ≤ scratchEnd) :
    HoareG σ X (LPreA (BR FR p.hp) s0 (fun m => LFn FR ND m)) nrbBody
      (LXA (BR FR p.hp) s0 (fun _ => True) (fun _ => True)) := by
  have hef : ∀ f, SourceCost.Shards.finalState.2.1.contains f = true →
      FunSpec σ X f (fun _ _ r _ => ¬ Abn r) := fun f h => Rec.noAbn_of_ef (Rec.ef_of_table hC hX0 h)
  have hE := heapEnd_lt'
  have hse : scratchEnd < 2 ^ 62 := by decide
  let Rf := BR FR p.hp
  unfold nrbBody
  -- the four declarations
  refine hoareGA_dec (L' := fun _ _ => True) (Lout := fun _ => True) (fun s hs hP v hv hsh => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareGA_pre (L' := fun m => LFn FR ND m) ?_ (fun m hm => by
    subst hm; exact lfn_upd hP.1 (by decide) (by decide) _)
  refine hoareGA_dec (L' := fun _ _ => True) (Lout := fun _ => True) (fun s1 hs1 hP1 v1 hv1 hsh1 => ?_)
    (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv1; cases hv1
  refine hoareGA_pre (L' := fun m => LFn FR ND m ∧ ∃ c : BitVec 64, m.lookup (nm "payload") = some (.val (.word c))) ?_
    (fun m hm => by
      subst hm
      exact ⟨lfn_upd hP1.1 (by decide) (by decide) _, _, lookup_update_self _ _ _⟩)
  refine hoareGA_dec (L' := fun _ _ => True) (Lout := fun _ => True) (fun s2 hs2 hP2 v2 hv2 hsh2 => ?_)
    (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv2; cases hv2
  refine hoareGA_pre (L' := fun m => LFn FR ND m ∧ (∃ c : BitVec 64, m.lookup (nm "payload") = some (.val (.word c))) ∧
      ∃ c : BitVec 64, m.lookup (nm "cbuf") = some (.val (.word c))) ?_
    (fun m hm => by
      subst hm
      obtain ⟨c, hc⟩ := hP2.1.2
      exact ⟨lfn_upd hP2.1.1 (by decide) (by decide) _,
        ⟨c, by rw [lookup_update_ne _ _ (by decide)]; exact hc⟩, _, lookup_update_self _ _ _⟩)
  refine hoareGA_dec (L' := fun _ _ => True) (Lout := fun _ => True) (fun s3 hs3 hP3 v3 hv3 hsh3 => ?_)
    (fun _ _ _ _ => trivial)
  rw [ev_cw] at hv3; cases hv3
  refine hoareGA_pre (L' := fun m => LBg FR ND m) ?_ (fun m hm => by
    subst hm
    obtain ⟨hfn, ⟨c1, h1⟩, ⟨c2, h2⟩⟩ := hP3.1
    refine ⟨?_, ?_, ⟨c2, ?_⟩, ⟨_, lookup_update_self _ _ _⟩, ⟨c1, ?_⟩⟩
    · rw [lookup_update_ne _ _ (by decide)]; exact hfn.fr
    · rw [lookup_update_ne _ _ (by decide)]; exact hfn.node
    · rw [lookup_update_ne _ _ (by decide)]; exact h2
    · rw [lookup_update_ne _ _ (by decide)]; exact h1)
  refine hoareGA_seq (L2 := fun m => LBg FR ND m) ?_ ?_
  swap
  · -- the three stores and the return
    have hst : ∀ (k : Nat) (x : MlS), (∃ c : BitVec 64, ∀ m, LBg FR ND m → m.lookup x = some (.val (.word c)) → True) →
        True := fun _ _ _ => trivial
    refine hoareGA_seq (L2 := fun m => LBg FR ND m) (hoareGA_store ?_) ?_
    · intro s hs hP w v mem hw hv hmem
      rw [ev_add2 (ev_lw hP.1.fr) (ev_cw s 24)] at hw
      cases hw
      obtain ⟨c, hc⟩ := hP.1.cbuf
      rw [ev_lw hc] at hv
      cases hv
      refine ⟨fun j hj => ?_, hP.1⟩
      have : j = 0 := by simpa [flattenHOL] using hj
      subst this
      exact Or.inl (by simp)
    refine hoareGA_seq (L2 := fun m => LBg FR ND m) (hoareGA_store ?_) ?_
    · intro s hs hP w v mem hw hv hmem
      rw [ev_add2 (ev_lw hP.1.fr) (ev_cw s 32)] at hw
      cases hw
      obtain ⟨c, hc⟩ := hP.1.clen
      rw [ev_lw hc] at hv
      cases hv
      refine ⟨fun j hj => ?_, hP.1⟩
      have : j = 0 := by simpa [flattenHOL] using hj
      subst this
      exact Or.inr (Or.inl (by simp))
    refine hoareGA_seq (L2 := fun m => LBg FR ND m) (hoareGA_store ?_) ?_
    · intro s hs hP w v mem hw hv hmem
      rw [ev_add2 (ev_lw hP.1.fr) (ev_cw s 40)] at hw
      cases hw
      obtain ⟨c, hc⟩ := hP.1.payload
      rw [ev_lw hc] at hv
      cases hv
      refine ⟨fun j hj => ?_, hP.1⟩
      have : j = 0 := by simpa [flattenHOL] using hj
      subst this
      exact Or.inr (Or.inr (Or.inl (by simp)))
    · exact hoareGA_return fun s hs hP v hv => trivial
  · -- the compact path
    refine hoareGA_ite ?_ (hoareG_pre (hoareGA_skip fun m h => h) (fun s _ h => h.1))
    refine hoareG_pre (P := LPreA Rf s0 (fun m => LBg FR ND m)) ?_ (fun s _ h => h.1)
    unfold nrbInner
    -- `var nlen = lds (node + 40)`
    refine hoareGA_dec (L' := fun _ m' => LBg FR ND m') (Lout := fun m => LBg FR ND m)
      (fun s hs hP v hv hsh => ?_) (fun m m' hm hm' => ?_)
    swap
    · refine ⟨?_, ?_, ?_, ?_, ?_⟩
      · rw [lookup_resVarEq_ne _ _ (by decide)]; exact hm'.fr
      · rw [lookup_resVarEq_ne _ _ (by decide)]; exact hm'.node
      · obtain ⟨c, hc⟩ := hm'.cbuf; exact ⟨c, by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hc⟩
      · obtain ⟨c, hc⟩ := hm'.clen; exact ⟨c, by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hc⟩
      · obtain ⟨c, hc⟩ := hm'.payload; exact ⟨c, by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hc⟩
    obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv
    refine hoareGA_pre (L' := fun m => LBg FR ND m ∧ ∃ N : BitVec 64, m.lookup (nm "nlen") = some (.val (.word N)))
      ?_ (fun m hm => by
        subst hm
        refine ⟨⟨?_, ?_, ?_, ?_, ?_⟩, _, lookup_update_self _ _ _⟩
        · rw [lookup_update_ne _ _ (by decide)]; exact hP.1.fr
        · rw [lookup_update_ne _ _ (by decide)]; exact hP.1.node
        · obtain ⟨c, hc⟩ := hP.1.cbuf; exact ⟨c, by rw [lookup_update_ne _ _ (by decide)]; exact hc⟩
        · obtain ⟨c, hc⟩ := hP.1.clen; exact ⟨c, by rw [lookup_update_ne _ _ (by decide)]; exact hc⟩
        · obtain ⟨c, hc⟩ := hP.1.payload; exact ⟨c, by rw [lookup_update_ne _ _ (by decide)]; exact hc⟩)
    refine hoareGA_seq (L2 := fun m => LBg FR ND m ∧ ∃ N Q : BitVec 64,
        m.lookup (nm "nlen") = some (.val (.word N)) ∧ m.lookup (nm "cbuf") = some (.val (.word Q)) ∧
        p.hp ≤ Q.toNat ∧ Q.toNat % 8 = 0 ∧ Q.toNat + (N.toNat / 2 + 2) ≤ heapEnd) ?_ ?_
    · refine hoareGA_callA (footRetA_alloc hC) ?_ ?_
      · intro s hs hP vs hvs callee
        exact ⟨(ordS_of_lpre hP : OrdS s), fun a ha => ha.elim⟩
      · intro s vs v callee hs hP hvs hret hval
        obtain ⟨hL, N, hN⟩ := hP.1
        obtain ⟨n, q, hvs', hv', hq8, ⟨p1, hp1, hqp⟩, hqe⟩ := hret
        have hev := ev_allocArg hN
        have hvs2 : evs s [.op .add [.shift .lsr (lv (nm "nlen")) (cw 1), cw 2]] =
            some [.val (.word ((N >>> (1 : Nat)) + BitVec.ofNat 64 2))] := evs_cons hev evs_nil
        rw [hvs2] at hvs
        have hvs3 : vs = [.val (.word ((N >>> (1 : Nat)) + BitVec.ofNat 64 2))] :=
          (Option.some.inj hvs).symm
        rw [hvs3] at hvs'
        cases hvs'
        subst hv'
        obtain ⟨p0, p1', e0, e1', hm, ho', hg⟩ := hP.2.1
        rw [hp] at e0; cases e0
        have hp1s : ptrsOf s = some p1 := hp1
        rw [hp1s] at e1'; cases e1'
        refine ⟨⟨?_, ?_, ⟨q, ?_⟩, ?_, ?_⟩, N, q, ?_, lookup_update_self _ _ _, ?_, hq8, ?_⟩
        · rw [lookup_update_ne _ _ (by decide)]; exact hL.fr
        · rw [lookup_update_ne _ _ (by decide)]; exact hL.node
        · exact lookup_update_self _ _ _
        · obtain ⟨c, hc⟩ := hL.clen; exact ⟨c, by rw [lookup_update_ne _ _ (by decide)]; exact hc⟩
        · obtain ⟨c, hc⟩ := hL.payload; exact ⟨c, by rw [lookup_update_ne _ _ (by decide)]; exact hc⟩
        · rw [lookup_update_ne _ _ (by decide)]; exact hN
        · rw [hqp]; exact hm.1
        · rw [← shr1_add2]; exact hqe
    · -- `var isl = 0; if k == 1 { isl = 1; }; clen = nlc(...); ...`
      refine hoareGA_dec (L' := fun _ m' => LBg FR ND m') (Lout := fun m => LBg FR ND m)
        (fun s hs hP v hv hsh => ?_) (fun m m' hm hm' =>
          lbg_res hm' _ (by decide) (by decide) (by decide) (by decide) (by decide))
      rw [ev_cw] at hv; cases hv
      refine hoareGA_pre (L' := fun m => LDg FR ND p.hp m) ?_ (fun m hm => by
        subst hm
        exact ldg_upd hP.1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) _)
      refine hoareGA_seq (L2 := fun m => LDg FR ND p.hp m) ?_ ?_
      · refine hoareGA_ite ?_ ?_
        · refine hoareG_pre (hoareGA_assign (L' := fun m => LDg FR ND p.hp m) fun s' hs' hP' v' hv' => ?_)
            (fun s _ h => h.1)
          exact ldg_upd hP'.1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) _
        · exact hoareG_pre (hoareGA_skip fun m h => h) (fun s _ h => h.1)
      · -- `clen = nibble_list_to_compact(...)` and the encoded lengths
        have hnlc : FootRetA σ X (nm "nibble_list_to_compact")
            (fun vs s => OrdS s ∧ MptH.NlcPre vs) (fun vs _ => MptH.NlcR vs) (fun _ _ _ => True) :=
          footRetA_of_footSpec (MptH.foot_nibble_list_to_compact hC) (fun vs s h => h)
        refine hoareGA_seq (L2 := fun m => LBg FR ND m) ?_ ?_
        · refine hoareGA_callA hnlc ?_ ?_
          · intro s hs hP vs hvs callee
            obtain ⟨hL, N, Q, hN, hQ, hphp, hq8, hqe⟩ := hP.1
            obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs4_inv hvs
            have h2 : v2 = .val (.word N) := Option.some.inj (e2.symm.trans (ev_lw hN))
            have h4 : v4 = .val (.word Q) := Option.some.inj (e4.symm.trans (ev_lw hQ))
            subst h2 h4
            refine ⟨⟨(ordS_of_lpre hP : OrdS s), Q, N, by simp [argW, wordOf], by simp [argW, wordOf], ?_⟩,
              fun a ⟨D, N', hD, hN', hov⟩ => ?_⟩
            · have : heapEnd ≤ scratchEnd := by decide
              omega
            · simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero,
                Option.some.injEq] at hD hN'
              subst hD hN'
              obtain ⟨ha8, ha1, ha2⟩ := hov
              have hQa : Q.toNat ≤ a.toNat := by omega
              exact Or.inr (Or.inr (Or.inr ⟨by omega, by omega⟩))
          · intro s vs v callee hs hP hvs hret hval
            obtain ⟨c, hc⟩ := hP.1.1.clen
            obtain ⟨w, rfl⟩ := word_of_valid hval hc
            obtain ⟨c1, h1⟩ := hP.1.1.cbuf
            obtain ⟨c3, h3⟩ := hP.1.1.payload
            exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hP.1.1.fr,
              by rw [lookup_update_ne _ _ (by decide)]; exact hP.1.1.node,
              ⟨c1, by rw [lookup_update_ne _ _ (by decide)]; exact h1⟩,
              ⟨w, lookup_update_self _ _ _⟩,
              ⟨c3, by rw [lookup_update_ne _ _ (by decide)]; exact h3⟩⟩
        · -- `var el = rlp_bytes_encoded_len(...); payload = el; if k == 1 { ... }`
          have hbel : FootRetA σ X (nm "rlp_bytes_encoded_len") (fun _ s => OrdS s)
              (fun _ _ _ => False) (fun _ _ _ => True) :=
            footRetA_of_pure (pure_of_noFoot (footRet_rlp_bytes_encoded_len hC)) (fun _ s h => h)
          have hvel : FootRetA σ X (nm "rlp_value_encoded_len") (fun _ s => OrdS s)
              (fun _ _ _ => False) (fun _ _ _ => True) :=
            footRetA_of_pure ((funSpec_rlp_value_encoded_len hC).mono fun _ _ _ _ h hg => by
              obtain ⟨a, b, -⟩ := h hg; exact ⟨a, b⟩) (fun _ s h => h)
          refine hoareGA_decCall hbel (L' := fun _ m => LBg FR ND m) (Lout := fun m => LBg FR ND m)
            ?_ ?_ (fun m m' hm hm' =>
              lbg_res hm' _ (by decide) (by decide) (by decide) (by decide) (by decide))
          · intro s hs hP vs hvs callee
            exact ⟨(ordS_of_lpre hP : OrdS s), fun a ha => ha.elim⟩
          · intro s vs v callee hs hP hvs hret hsh
            obtain ⟨e, rfl⟩ := val_of_shapeEq_one' hsh
            have hLB : LBg FR ND (s.locals.update (nm "el", .val (.word e))) :=
              lbg_other hP.1 (by decide) (by decide) (by decide) (by decide) (by decide) _
            refine hoareGA_pre (L' := fun m => LBg FR ND m ∧
                m.lookup (nm "el") = some (.val (.word e))) ?_ (fun m hm => by
              subst hm; exact ⟨hLB, lookup_update_self _ _ _⟩)
            refine hoareGA_seq (L2 := fun m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e))) ?_ ?_
            · refine hoareGA_assign (L' := fun m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e)))
                fun s' hs' hP' v' hv' => ?_
              rw [ev_lw hP'.1.2] at hv'
              cases hv'
              obtain ⟨c1, h1⟩ := hP'.1.1.cbuf
              obtain ⟨c2, h2⟩ := hP'.1.1.clen
              refine ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hP'.1.1.fr,
                by rw [lookup_update_ne _ _ (by decide)]; exact hP'.1.1.node,
                ⟨c1, by rw [lookup_update_ne _ _ (by decide)]; exact h1⟩,
                ⟨c2, by rw [lookup_update_ne _ _ (by decide)]; exact h2⟩,
                ⟨e, lookup_update_self _ _ _⟩⟩, by rw [lookup_update_ne _ _ (by decide)]; exact hP'.1.2⟩
            · refine hoareGA_post (L := fun m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e))) ?_ (fun m h => h.1) (fun _ h => h)
              refine hoareGA_ite ?_ (hoareG_pre (hoareGA_skip fun m h => h) (fun s _ h => h.1))
              refine hoareG_pre ?_ (fun s _ h => h.1)
              refine hoareGA_decCall hvel (L' := fun _ m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e)))
                (Lout := fun m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e))) ?_ ?_
                (fun m m' hm hm' => ⟨lbg_res hm'.1 _ (by decide) (by decide) (by decide) (by decide) (by decide), by
                  rw [lookup_resVarEq_ne _ _ (by decide)]; exact hm'.2⟩)
              · intro s' hs' hP' vs' hvs' callee'
                exact ⟨(ordS_of_lpre hP' : OrdS s'), fun a ha => ha.elim⟩
              · intro s' vs' v' callee' hs' hP' hvs' hret' hsh'
                obtain ⟨vl, rfl⟩ := val_of_shapeEq_one' hsh'
                obtain ⟨c3, h3⟩ := hP'.1.1.payload
                refine hoareGA_pre (L' := fun m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e)) ∧
                    m.lookup (nm "vl") = some (.val (.word vl))) ?_ (fun m hm => by
                  subst hm
                  refine ⟨lbg_other hP'.1.1 (by decide) (by decide) (by decide) (by decide) (by decide) _, ?_, lookup_update_self _ _ _⟩
                  rw [lookup_update_ne _ _ (by decide)]; exact hP'.1.2)
                refine hoareGA_assign (L' := fun m => LBg FR ND m ∧ m.lookup (nm "el") = some (.val (.word e))) ?_
                intro s'' hs'' hP'' v'' hv''
                obtain ⟨c3', h3'⟩ := hP''.1.1.payload
                rw [ev_add2 (ev_lw h3') (ev_lw hP''.1.2.2)] at hv''
                cases hv''
                obtain ⟨c1, h1⟩ := hP''.1.1.cbuf
                obtain ⟨c2, h2⟩ := hP''.1.1.clen
                refine ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hP''.1.1.fr,
                  by rw [lookup_update_ne _ _ (by decide)]; exact hP''.1.1.node,
                  ⟨c1, by rw [lookup_update_ne _ _ (by decide)]; exact h1⟩,
                  ⟨c2, by rw [lookup_update_ne _ _ (by decide)]; exact h2⟩,
                  ⟨_, lookup_update_self _ _ _⟩⟩, by rw [lookup_update_ne _ _ (by decide)]; exact hP''.1.2.1⟩

/-- **`_node_rlp_begin`: the exception-inclusive footprint spec.** -/
theorem beginG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hX0 : DomBounded X) :
    FootRetA σ X (nm "_node_rlp_begin")
      (fun vs s => OrdS s ∧ ∃ fr nd : BitVec 64, vs = [.val (.word fr), .val (.word nd)] ∧
        heapEnd ≤ fr.toNat ∧ fr.toNat + 48 ≤ scratchEnd)
      (fun vs s a => ∃ (fr nd : BitVec 64) (p : Ptrs), vs = [.val (.word fr), .val (.word nd)] ∧
        ptrsOf s = some p ∧ BR fr p.hp a)
      (fun _ _ _ => True) := by
  intro vs body callee rs hl s0 hs hloc r hr hg ⟨⟨p, hp, ho⟩, fr, nd, hvs, hf1, hf2⟩
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA0, hB0⟩ := lookupCode_two code_node_rlp_begin (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hfr : LFn fr nd s0.locals := ⟨by rw [hloc]; exact hA0, by rw [hloc]; exact hB0⟩
  have H := beginFootH hC hA hT hX0 hp ho hfr hf1 hf2 s0 hs ⟨hfr, bwa_refl hp ho⟩
    (by rw [hr]; exact hg)
  rw [hr] at H
  exact ⟨H.1.1, H.1.2.mono fun a ha => ⟨fr, nd, p, rfl, hp, ha⟩, fun _ _ => trivial⟩

end InitECandidate.Solver.MemSafe.Trie
