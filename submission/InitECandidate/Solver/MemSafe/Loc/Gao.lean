import InitECandidate.Solver.MemSafe.Loc.RootSep

set_option autoImplicit false

/-!
# `ws_get_account_optional` and `ws_storage_root_of` over the located leaf facts (sonnet-loc)

Primed copies of `St2.gaoLoc_of` / `St2.rootLoc_of_gao` with the premises the located facts need:
`RootSep s q` (the root cell is not written by `keccak256`) and `GWg t.globals` (`empty_trie_root`,
`empty_code_hash` are words in the final state).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.MemSafe.St2 (LocW locW_congr iteT iteF gaoBody code_gao wsrBody code_wsr)
open InitECandidate.Solver.Spec.Mpt (NullOrNd)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type}

def GaoLoc' (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "ws_get_account_optional") (fun _ s r t =>
    ∀ q, ptrsOf s = some q → q.Ordered → RootSep s q → ∀ a, r = .returned (.val (.word a)) →
      GWg t.globals → a = 1 ∨ LocW s t (rd t.memory (a + 40)))

def RootLoc' (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "ws_storage_root_of") (fun _ s r t =>
    ∀ q, ptrsOf s = some q → q.Ordered → RootSep s q → ∀ w,
      r = .returned (.val (.word w)) → GWg t.globals → LocW s t w)

theorem gaoLoc_of' (hLeaf : LeafLoc' σ) (hDec : DecLoc' σ) : GaoLoc' σ := by
  have hX : guestCtx.code.lookup = guestCode := (Rec.foldOK_guestR (σ := σ)).hX
  refine FunSpec.mono (Frames.funSpec_of_hoareG'
    (Pre := fun _ s => ∃ q, ptrsOf s = some q ∧ q.Ordered ∧ RootSep s q)
    (R := fun _ s r t => ∀ a, r = .returned (.val (.word a)) → GWg t.globals →
      a = 1 ∨ LocW s t (rd t.memory (a + 40))) ?_)
    (fun vs s r t h => fun q hq ho hRS a hw hg => h (by rw [hw]; simp [Good]) ⟨q, hq, ho, hRS⟩ a hw hg)
  intro vs body callee rs hl s0 hs0 hloc ⟨q, hq, ho, hRS⟩
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hlA⟩ := lookupCode_one code_gao hl
  unfold gaoBody
  refine hoareG_decCall hLeaf ?_ ?_
  · intro s hs hp vs1 hvs1 callee1 v st hR hctx hsh
    subst hp
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh
    match ws, hws with
    | [x, y, z], _ =>
    obtain ⟨⟨q', hq', ho', hqq'⟩, hfound⟩ := hR q hq ho hRS (wv [x, y, z]) rfl
    set u1 := setVarHOLFinite (nm "leaf") (wv [x, y, z]) { st with locals := s.locals } with hu1
    have hleaf : u1.locals.lookup (nm "leaf") =
        some (.rStruct [.val (.word x), .val (.word y), .val (.word z)]) := lk_set_self _ _ _
    have hptr1 : ptrsOf u1 = some q' := hq'
    by_cases hx0 : x = 0
    · subst hx0
      refine hoareG_seq (R := fun r t => r ≠ none ∧ ∀ rr, r = some rr → ∀ a,
          rr = .returned (.val (.word a)) → GWg t.globals → a = 1 ∨ LocW s t (rd t.memory (a + 40))) ?_
        (fun r t _ hr _ h => ?_) (hoareG_false fun t _ h => h.1 rfl)
      · refine iteT (w0 := 1) (by decide) ?_ (hoareG_return ?_)
        · intro t ht hP
          subst hP
          rw [ev_cmp (Spec.Mpt.Dec.ev_rfield_w hleaf (i := 0) (w := 0) rfl) (ev_cw _ 0)]
          simp [wordCmpHOL]
        · intro t ht hP v' hv'
          subst hP
          rw [ev_cw] at hv'
          cases hv'
          refine ⟨by simp, fun rr hrr a hw => ?_⟩
          cases hrr
          cases hw
          exact fun _ => Or.inl rfl
      · intro rr hrr a hw hg
        exact (h.2 rr hrr a hw hg).elim (fun h1 => Or.inl h1) (fun h1 =>
          Or.inr (locW_congr rfl rfl rfl rfl h1))
    · refine hoareG_seq (R := fun r t => r = none ∧ t = u1) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
      · refine iteF (fun t ht hP => ?_) (hoareG_skip fun t _ hP => ⟨rfl, hP⟩)
        subst hP
        rw [ev_cmp (Spec.Mpt.Dec.ev_rfield_w hleaf (i := 0) (w := x) rfl) (ev_cw _ 0)]
        simp [wordCmpHOL]
        exact hx0
      · refine hoareG_decCall (allocSpec_alloc hX) ?_ ?_
        · intro s2 hs2 hP2 vs2 hvs2 callee2 v2 st2 hR2 hctx2 hsh2
          obtain ⟨-, hP2⟩ := hP2
          subst hP2
          rw [evs_cons (ev_cw _ 56) evs_nil] at hvs2
          cases hvs2
          obtain ⟨hm2, hg2, p2, hp2, hord2, hmono2, hret2⟩ :=
            hR2 (by simp [Good]) _ _ rfl hptr1 ho'
          obtain ⟨T, rfl, -⟩ := hret2 v2 rfl
          set u2 := setVarHOLFinite (nm "a") (.val (.word T)) { st2 with locals := u1.locals }
            with hu2
          have hu2a : u2.locals.lookup (nm "a") = some (.val (.word T)) := lk_set_self _ _ _
          have hu2l : u2.locals.lookup (nm "leaf") =
              some (.rStruct [.val (.word x), .val (.word y), .val (.word z)]) := by
            rw [hu2, lk_set_ne _ _ (by decide)]; exact hleaf
          have hptr2 : ptrsOf u2 = some p2 := hp2
          let Dec : State σ → Prop := fun t =>
            (z = 0 ∨ (heapBase ≤ y.toNat ∧ y.toNat + z.toNat ≤ p2.hp)) → GWg t.globals →
              gword t (nm "empty_trie_root") = some (rd t.memory (T + 40)) ∨
                (y.toNat ≤ (rd t.memory (T + 40)).toNat ∧
                  (rd t.memory (T + 40)).toNat + 32 ≤ y.toNat + z.toNat)
          refine hoareG_seq (R := fun r t => (r = none ∧
              (t.locals.lookup (nm "a") = some (.val (.word T)) ∧ Dec t)) ∨
              (∃ r', r = some r' ∧ ∀ v, r' ≠ PanSemResultExact.returned v)) ?_
            (fun r t _ hr _ h => ?_) ?_
          · refine hoareG_callD hDec ?_ ?_
            · intro s3 hs3 hP3 vs3 hvs3 callee3 v3 st3 hR3 hctx3
              subst hP3
              rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hu2l (i := 1) (w := y) rfl)
                (evs_cons (Spec.Mpt.Dec.ev_rfield_w hu2l (i := 2) (w := z) rfl)
                  (evs_cons (ev_lw hu2a) evs_nil))] at hvs3
              cases hvs3
              refine Or.inl ⟨rfl, hu2a, fun hpre hg => ?_⟩
              exact hR3 v3 rfl p2 hptr2 hord2 y z T rfl (by
                rcases hpre with h | ⟨h1, h2⟩
                · exact Or.inl h
                · exact Or.inr ⟨h1, h2⟩) hg
            · intro s3 hs3 hP3 vs3 hvs3 callee3 r3 st3 hR3 hctx3 habn
              exact Or.inr ⟨r3, rfl, fun v h => by
                rcases habn with ⟨e, v', rfl⟩ | ⟨e, rfl⟩ <;> cases h⟩
          · intro rr hrr a' hw hg
            rcases h with ⟨h0, -⟩ | ⟨r', rfl, hne⟩
            · exact absurd h0 hr
            · cases hrr
              exact absurd hw (hne _)
          · refine hoareG_return fun t ht hRn v hv => ?_
            rcases hRn with ⟨-, ha, hdec⟩ | ⟨r', hr', -⟩
            swap
            · cases hr'
            rw [ev_lw ha] at hv
            cases hv
            intro rr hrr a' hw hg
            cases hrr
            cases hw
            refine Or.inr ?_
            intro Nd hN
            obtain ⟨n0, hn0, hval⟩ := hfound x y z rfl hx0 Nd hN
            obtain ⟨p, hp', -, hvb⟩ := hN.2.2.1
            have hpq : p = q := by rw [hq] at hp'; exact (Option.some.inj hp').symm
            subst hpq
            have hbd := hvb n0 y z hn0 hval
            have hle : p.hp ≤ p2.hp := hqq'.trans hmono2.1
            rcases hdec (by
              rcases hbd with h | ⟨h1, h2⟩
              · exact Or.inl h
              · exact Or.inr ⟨h1, by omega⟩) hg with h | ⟨h1, h2⟩
            · exact Or.inl h
            · exact Or.inr ⟨n0, y, z, hn0, hval, h1, h2⟩
        · intro s2 hs2 hP2 vs2 hvs2 callee2 r2 st2 hR2 hctx2 habn rr hrr a hw hg
          rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> cases hrr <;> cases hw
  · intro s hs hp vs1 hvs1 callee1 r st hR hctx habn rr hrr a hw hg
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> cases hrr <;> cases hw


theorem rootLoc_of_gao' (hG : GaoLoc' σ) : RootLoc' σ := by
  have hX : guestCtx.code.lookup = guestCode := (Rec.foldOK_guestR (σ := σ)).hX
  refine FunSpec.mono (Frames.funSpec_of_hoareG'
    (Pre := fun _ s => ∃ q, ptrsOf s = some q ∧ q.Ordered ∧ RootSep s q)
    (R := fun _ s r t => ∀ w, r = .returned (.val (.word w)) → GWg t.globals → LocW s t w) ?_)
    (fun vs s r t h => fun q hq ho hRS w hw hg => h (by rw [hw]; simp [Good]) ⟨q, hq, ho, hRS⟩ w hw hg)
  intro vs body callee rs hl s0 hs0 hloc ⟨q, hq, ho, hRS⟩
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hlA⟩ := lookupCode_one code_wsr hl
  unfold wsrBody
  refine hoareG_decCall hG ?_ ?_
  · intro s hs hp vs1 hvs1 callee1 v st hR hctx hsh
    subst hp
    obtain ⟨a, rfl⟩ := val_of_shapeEq_one' hsh
    have hR' := hR q hq ho hRS a rfl
    set u := setVarHOLFinite (nm "a") (.val (.word a)) { st with locals := s.locals } with hu
    have hula : u.locals.lookup (nm "a") = some (.val (.word a)) := lk_set_self _ _ _
    by_cases ha1 : a = 1
    · subst ha1
      refine hoareG_seq (R := fun r t => r ≠ none ∧ ∀ rr, r = some rr → ∀ w,
          rr = .returned (.val (.word w)) → GWg t.globals → LocW s t w) ?_ (fun r t _ hr _ h => ?_)
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
          exact fun _ Nd _ => Or.inl hgw
      · intro rr hrr w hw hg
        exact locW_congr rfl rfl rfl rfl (h.2 rr hrr w hw hg)
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
        intro rr hrr w hw hg
        cases hrr
        cases hw
        rcases hR' hg with h | h
        · exact absurd h ha1
        · exact locW_congr rfl rfl rfl rfl h
  · intro s hs hp vs1 hvs1 callee1 r st hR hctx habn rr hrr w hw hg
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> cases hrr <;> cases hw

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.gaoLoc_of'
#print axioms InitECandidate.Solver.MemSafe.Loc.rootLoc_of_gao'
