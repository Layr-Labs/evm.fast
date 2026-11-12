import InitECandidate.Solver.MemSafe.St2.Gso3
import InitECandidate.Solver.MemSafe.Frames.Exc

set_option autoImplicit false

/-!
# `ws_storage_root_of`'s located post from `ws_get_account_optional`'s (sonnet-st2, deliverable 1)

```
fun 1 ws_storage_root_of(1 addr) {
  var 1 a = ws_get_account_optional(addr);
  if a == 1 { return empty_trie_root; }
  return lds 1 (a + 40); }
```
`GaoLoc σ`: `ws_get_account_optional` returns `1` (no account) or a record `a` whose storage-root
field `rd (a + 40)` satisfies `LocW`. `rootLoc_of_gao : GaoLoc σ → RootLoc σ`.
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.St2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Spec.Mpt (NullOrNd)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type}

theorem iteT {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {p q : ProgHOL 64} {w0 : BitVec 64} (hw : w0 ≠ 0)
    (hc : ∀ s : State σ, InCtx s guestCtx → P s → ev s c = some (.val (.word w0)))
    (hp : HoareG σ guestCtx P p Q) : HoareG σ guestCtx P (.ite c p q) Q :=
  hoareG_ite (hoareG_pre hp (fun s _ h => h.1))
    (hoareG_false (fun s hs h => hw (by
      have := (hc s hs h.1).symm.trans h.2
      simpa using this)))

theorem iteF {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {p q : ProgHOL 64}
    (hc : ∀ s : State σ, InCtx s guestCtx → P s → ev s c = some (.val (.word 0)))
    (hq : HoareG σ guestCtx P q Q) : HoareG σ guestCtx P (.ite c p q) Q :=
  hoareG_ite (hoareG_false (fun s hs ⟨hP, w, hw, hne⟩ => hne (by
      have := (hc s hs hP).symm.trans hw
      simpa using this.symm)))
    (hoareG_pre hq (fun s _ h => h.1))

def wsrBody : ProgHOL 64 :=
  .decCall (nm "a") .one (nm "ws_get_account_optional") [lv (nm "addr")]
    (.seq (.ite (.cmp .equal (lv (nm "a")) (cw 1))
        (.return (.var .global (nm "empty_trie_root"))) .skip)
      (.return (.load .one (.op .add [lv (nm "a"), cw 40]))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_wsr : fnEntry Guest.Software.guestFn_ws_storage_root_of =
    (nm "ws_storage_root_of", [(nm "addr", .one)], wsrBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_wsr : guestCode (nm "ws_storage_root_of") =
    some ([(nm "addr", .one)], wsrBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 367) (by decide)) ⟨_, rfl⟩
    entry_wsr

/-- `ws_get_account_optional`'s located post: `1`, or a record whose storage-root field is located. -/
def GaoLoc (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "ws_get_account_optional") (fun _ s r t =>
    ∀ q, ptrsOf s = some q → q.Ordered → ∀ a, r = .returned (.val (.word a)) →
      a = 1 ∨ LocW s t (rd t.memory (a + 40)))


theorem rootLoc_of_gao (hG : GaoLoc σ) : RootLoc σ := by
  have hX : guestCtx.code.lookup = guestCode := (Rec.foldOK_guestR (σ := σ)).hX
  refine FunSpec.mono (Frames.funSpec_of_hoareG'
    (Pre := fun _ s => ∃ q, ptrsOf s = some q ∧ q.Ordered)
    (R := fun _ s r t => ∀ w, r = .returned (.val (.word w)) → LocW s t w) ?_)
    (fun vs s r t h => fun q hq ho w hw => h (by rw [hw]; simp [Good]) ⟨q, hq, ho⟩ w hw)
  intro vs body callee rs hl s0 hs0 hloc ⟨q, hq, ho⟩
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hlA⟩ := lookupCode_one code_wsr hl
  unfold wsrBody
  refine hoareG_decCall hG ?_ ?_
  · intro s hs hp vs1 hvs1 callee1 v st hR hctx hsh
    subst hp
    obtain ⟨a, rfl⟩ := val_of_shapeEq_one' hsh
    have hR' := hR q hq ho a rfl
    set u := setVarHOLFinite (nm "a") (.val (.word a)) { st with locals := s.locals } with hu
    have hula : u.locals.lookup (nm "a") = some (.val (.word a)) := lk_set_self _ _ _
    have hmem : u.memory = st.memory := rfl
    have hglob : u.globals = st.globals := rfl
    by_cases ha1 : a = 1
    · subst ha1
      refine hoareG_seq (R := fun r t => r ≠ none ∧ ∀ rr, r = some rr → ∀ w,
          rr = .returned (.val (.word w)) → LocW s t w) ?_ (fun r t _ hr _ h => ?_)
        (hoareG_false fun t _ h => h.1 rfl)
      · refine iteT (w0 := 1) (by decide : (1 : BitVec 64) ≠ 0) ?_ (hoareG_return ?_)
        · intro t ht hP
          subst hP
          rw [ev_cmp (ev_lw hula) (ev_cw _ 1)]
          simp [wordCmpHOL]
        · intro t ht hP v hv
          subst hP
          refine ⟨by simp, fun rr hrr w hw => ?_⟩
          cases hrr
          cases hw
          have hgw : gword u (nm "empty_trie_root") = some w := by
            unfold gword
            rw [show u.globals.lookup (nm "empty_trie_root") = some (.val (.word w)) from hv]
          exact fun Nd _ => Or.inl hgw
      · intro rr hrr w hw
        exact locW_congr rfl rfl rfl rfl (h.2 rr hrr w hw)
    · refine hoareG_seq (R := fun r t => r = none ∧ t = u) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
      · refine iteF (fun t ht hP => ?_) (hoareG_skip (fun t _ hP => ⟨rfl, hP⟩))
        subst hP
        rw [ev_cmp (ev_lw hula) (ev_cw _ 1)]
        simp [wordCmpHOL]
        exact ha1
      · refine hoareG_return fun t ht ⟨_, htu⟩ v hv => ?_
        subst htu
        have hva := Spec.Mpt.Dec.ev_ld hula 40 v hv
        subst hva
        intro rr hrr w hw
        cases hrr
        cases hw
        rcases hR' with h | h
        · exact absurd h ha1
        · exact locW_congr rfl rfl rfl rfl h
  · intro s hs hp vs1 hvs1 callee1 r st hR hctx habn rr hrr w hw
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> cases hrr <;> cases hw

end InitECandidate.Solver.MemSafe.St2

namespace InitECandidate.Solver.MemSafe.St2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type}

/-- `ws_account_leaf`'s located post: the allocator pointers are kept or grow (the window is
released), and a found leaf `<x ≠ 0, y, z>` is the value slice of a node of every `NdPrem` set. -/
def LeafLoc (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "ws_account_leaf") (fun _ s r t =>
    ∀ q, ptrsOf s = some q → q.Ordered → ∀ v, r = .returned v →
      (∃ q', ptrsOf t = some q' ∧ q'.Ordered ∧ q.hp ≤ q'.hp) ∧
      ∀ x y z, v = .rStruct [.val (.word x), .val (.word y), .val (.word z)] → x ≠ 0 →
        ∀ Nd, NdPrem s Nd → ∃ n, Nd n ∧ ValOf s.memory n y z)

/-- `decode_account_from_leaf(p, n, a)`: the storage-root field `rd (a + 40)` it leaves is
`empty_trie_root`'s word or a 32-byte window of `[p, p + n)` (which lies in the allocated heap). -/
def DecLoc (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "decode_account_from_leaf") (fun vs s r t =>
    ∀ v, r = .returned v → ∀ p n a, vs = [.val (.word p), .val (.word n), .val (.word a)] →
      (n = 0 ∨ (heapBase ≤ p.toNat ∧ ∃ q, ptrsOf s = some q ∧ p.toNat + n.toNat ≤ q.hp)) →
      gword t (nm "empty_trie_root") = some (rd t.memory (a + 40)) ∨
        (p.toNat ≤ (rd t.memory (a + 40)).toNat ∧
          (rd t.memory (a + 40)).toNat + 32 ≤ p.toNat + n.toNat))

def gaoBody : ProgHOL 64 :=
  .decCall (nm "leaf") (.comb [.one, .one, .one]) (nm "ws_account_leaf") [lv (nm "addr")]
    (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "leaf"))) (cw 0)) (.return (cw 1)) .skip)
      (.decCall (nm "a") .one (nm "alloc") [cw 56]
        (.seq (callD (nm "decode_account_from_leaf")
            [.rfield 1 (lv (nm "leaf")), .rfield 2 (lv (nm "leaf")), lv (nm "a")])
          (.return (lv (nm "a"))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_gao : fnEntry Guest.Software.guestFn_ws_get_account_optional =
    (nm "ws_get_account_optional", [(nm "addr", .one)], gaoBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_gao : guestCode (nm "ws_get_account_optional") =
    some ([(nm "addr", .one)], gaoBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 366) (by decide)) ⟨_, rfl⟩
    entry_gao

end InitECandidate.Solver.MemSafe.St2
