import InitECandidate.Solver.MemSafe.Loc.DecItems

set_option autoImplicit false

/-!
# `decode_account_from_leaf`: the whole body (sonnet-loc, deliverable 1)

`dec_main`: from an entry state with `p = P`, `n = N`, `acct_out = A`, ordered pointers `q`, and
`N = 0 ∨ (heapBase ≤ P ∧ P + N ≤ q.hp)`, the body leaves in `A + 40` either `empty_trie_root`'s
word or a 32-byte window of `[P, P + N)` (provided both hash globals are words in the final state).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Integ
open InitECandidate.Solver.Spec.Mpt.Dec (Tk tk_callee tk2_callee shape_valid SIn SLen FreshFoot SlPre SlQ
  tk_ptrs notEq_else)
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL hoare_decCallL freshFoot_rlp_item'
  freshFoot_rlp_decode_fully' freshFoot_rlp_list_to_slices RiL RiQL riBody rdfBody
  code_rlp_item code_rlp_decode_fully ev_lv')

variable {σ : Type} {X : Ctx 64}

theorem finP_mono {lo hi lo' hi' : Nat} {A : BitVec 64} {t : State σ} (h1 : lo' ≤ lo) (h2 : hi ≤ hi')
    (h : FinP lo hi A t) : FinP lo' hi' A t := by
  rcases h with h | ⟨a, b⟩
  · exact Or.inl h
  · exact Or.inr ⟨by omega, by omega⟩

theorem dec_main (hC : X.code.lookup = guestCode) {s0 : State σ} {P N A : BitVec 64} {q : Ptrs}
    (hq : ptrsOf s0 = some q) (ho : q.Ordered)
    (hp : s0.locals.lookup (nm "p") = some (.val (.word P)))
    (hn : s0.locals.lookup (nm "n") = some (.val (.word N)))
    (ha : s0.locals.lookup (nm "acct_out") = some (.val (.word A)))
    (hyp : N = 0 ∨ (heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ q.hp)) :
    Hoare σ X (fun s => s = s0) daBody
      (fun r t => ∀ v, r = some (.returned v) → GWg t.globals →
        FinP P.toNat (P.toNat + N.toNat) A t) := by
  have hphe : q.hp ≤ heapEnd := ho.2.1
  have hE : heapEnd < 2 ^ 62 := by decide
  have hPN : P.toNat + N.toNat < 2 ^ 64 := by
    have := P.isLt
    rcases hyp with h | h
    · have : N.toNat = 0 := by rw [h]; rfl
      omega
    · omega
  unfold daBody
  refine hoare_decL (fun _ _ _ h => h) fun s1 _ hs1 vit hvit _ => ?_
  subst s1
  rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0)
    (evs_cons (ev_cw _ 0) evs_nil))))] at hvit
  cases hvit
  refine hoare_decL (fun _ _ _ h => h) fun s2 _ hs2 ve hve _ => ?_
  subst s2
  rw [ev_cw] at hve; cases hve
  set s2 := setVarHOLFinite (nm "e") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "it") (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0))]) s0) with hs2def
  have hit2 : s2.locals.lookup (nm "it") = some (.rStruct [.val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0))]) := by
    rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hpl2 : s2.locals.lookup (nm "p") = some (.val (.word P)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hp
  have hnl2 : s2.locals.lookup (nm "n") = some (.val (.word N)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hn
  have hal2 : s2.locals.lookup (nm "acct_out") = some (.val (.word A)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha
  have hp2 : ptrsOf s2 = some q := (Spec.Mpt.ptrsOf_frame rfl).trans hq
  let J1 : State σ → Prop := fun t => Tk q s0.memory t ∧
    t.locals.lookup (nm "p") = some (.val (.word P)) ∧ t.locals.lookup (nm "n") = some (.val (.word N)) ∧
    t.locals.lookup (nm "acct_out") = some (.val (.word A)) ∧ N ≠ 0 ∧
    ∃ i0 i1 i2 i3 : BitVec 64, t.locals.lookup (nm "it") = some (wv [i0, i1, i2, i3]) ∧
      P.toNat ≤ i1.toNat ∧ i1.toNat + i2.toNat ≤ P.toNat + N.toNat
  refine hoare_seq (R := fun r t => r = none ∧ J1 t) ?_ (fun r t _ hr _ h => absurd h.1 hr)
    (hoare_pre ?_ (fun t _ h => h.2))
  · unfold daTry
    refine hoare_callH ((freshFoot_rlp_decode_fully' hC).and (rdf_nz hC)) ?_ ?_
    · intro t _ ht vs' hvs' callee' v' st hR _
      subst ht
      refine ⟨fun h => absurd h (by simp), fun k x hkx hval => ?_⟩
      simp only [Option.some.injEq, Prod.mk.injEq] at hkx
      obtain ⟨rfl, rfl⟩ := hkx
      refine ⟨rfl, ?_⟩
      rw [evs_cons (ev_lw hpl2) (evs_cons (ev_lw hnl2) evs_nil)] at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      obtain ⟨q', hq', hord', hm', hf, hQ⟩ := hR.1 _ rfl q hp2 ho trivial
      have hN0 := hR.2 _ rfl P N rfl
      have hsh := shape_valid hit2 hval
      simp only [shapeOf_rStruct, List.map, shapeOf_val] at hsh
      obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
      match ws, hwl with
      | [i0, i1, i2, i3], _ =>
        obtain ⟨P', L', hvs'', hRi⟩ := hQ
        simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs''
        obtain ⟨rfl, rfl⟩ := hvs''
        have := hRi i0 i1 i2 i3 rfl
        exact ⟨tk_callee hp2 ⟨le_rfl, le_rfl, le_rfl⟩ (fun _ h => absurd rfl h)
          ((Spec.Mpt.ptrsOf_frame rfl).trans hq') hord' hm' hf,
          (lk_set_ne _ _ (by decide)).trans hpl2, (lk_set_ne _ _ (by decide)).trans hnl2,
          (lk_set_ne _ _ (by decide)).trans hal2, hN0,
          i0, i1, i2, i3, lk_set_self _ _ _, (this.2 hPN).1, (this.2 hPN).2⟩
    · intro t _ ht vs' _ callee' v' st _ _
      exact failK hC
  -- the tag guard, then `rlp_list_to_slices`
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_decCallL (freshFoot_rlp_list_to_slices hC) (fun _ _ _ h => h)
    fun t _ ⟨hJ, hc⟩ vs' hvs' callee' vsl st hR _ hsh => ?_
  obtain ⟨hTk, hpl, hnl, hal, hN0, i0, i1, i2, i3, hit, hi1, hi2⟩ := hJ
  obtain ⟨x1, r1, rfl, hx1, hr1⟩ := evs_cons_inv hvs'
  obtain ⟨x2, r2, rfl, hx2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2
  rw [Spec.Mpt.Dec.ev_rfield_w hit rfl] at hx2
  cases hx2
  rw [Spec.Mpt.Dec.ev_rfield_w hit rfl] at hx1
  cases hx1
  obtain ⟨q1, hq1, hordq1, hmq1⟩ := tk_ptrs hTk
  have hyp2 := hyp.resolve_left hN0
  obtain ⟨ps, hps, hordps, hmps, hfs, hSl⟩ := hR _ rfl q1 ((Spec.Mpt.ptrsOf_frame rfl).trans hq1) hordq1
    ⟨i1, i2, rfl, by omega, q1, hq1, by have := hmq1.1; omega⟩
  obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  match ws, hwl with
  | [Ar, K], _ =>
  obtain ⟨hAr1, hAr2, hslen⟩ := hSl Ar K rfl
  have hslen := hslen i1 i2 rfl
  set t0 := setVarHOLFinite (nm "sl") (wv [Ar, K]) { st with locals := t.locals } with ht0
  have hps0 : ptrsOf t0 = some ps := (Spec.Mpt.ptrsOf_frame rfl).trans hps
  have hT0 : Tk q s0.memory t0 := by
    obtain ⟨q1', hq1', -, hm1, hf1⟩ := hTk
    rw [hq1] at hq1'; cases hq1'
    exact tk_callee hq1 hm1 hf1 hps0 hordps hmps hfs
  have hsl0 : t0.locals.lookup (nm "sl") = some (wv [Ar, K]) := lk_set_self _ _ _
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_decL (fun _ _ _ h => h) fun u _ ⟨hu, hc2⟩ va hva _ => ?_
  subst hu
  have hK4 : K = BitVec.ofNat 64 4 :=
    notEq_else (Spec.Mpt.Dec.ev_rfield_w hsl0 (i := 1) (w := K) rfl) hc2
  have hK4' : K.toNat = 4 := by rw [hK4]; rfl
  rw [Spec.Mpt.Dec.ev_rfield_w hsl0 rfl] at hva
  cases hva
  set s1 := setVarHOLFinite (nm "arr") (.val (.word Ar)) t0 with hs1def
  have harr1 : s1.locals.lookup (nm "arr") = some (.val (.word Ar)) := lk_set_self _ _ _
  have hacc1 : s1.locals.lookup (nm "acct_out") = some (.val (.word A)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hal
  have hB1 : BaseS q s0.memory ps st.memory A Ar s1 :=
    ⟨tk_congr hT0 rfl rfl, ⟨ps, (Spec.Mpt.ptrsOf_frame rfl).trans hps0, hordps,
      ⟨le_rfl, le_rfl, le_rfl⟩, fun a h => absurd rfl h⟩, harr1, hacc1⟩
  have hArB : heapBase ≤ Ar.toNat := by
    have := hAr1 (by omega); have := hordq1.1; omega
  have hSI : SIn st.memory Ar 4 i1.toNat (i1.toNat + i2.toNat) := by rw [← hK4'] ; exact hslen
  have hAr64 : Ar.toNat + 64 ≤ ps.hp := by omega
  have hpsh : ps.hp ≤ heapEnd := hordps.2.1
  have hhi : i1.toNat + i2.toNat < 2 ^ 64 := by omega
  have hQ' : ∀ (r : Option (PanSemResultExact 64)) (t : State σ) (L : Locs),
      (fun r t => ∀ v, r = some (.returned v) → GWg t.globals →
        FinP P.toNat (P.toNat + N.toNat) A t) r t →
      (fun r t => ∀ v, r = some (.returned v) → GWg t.globals →
        FinP P.toNat (P.toNat + N.toNat) A t) r { t with locals := L } :=
    fun _ _ _ h => h
  have hlo : P.toNat ≤ i1.toNat := hi1
  unfold daItems
  refine hoare_pre (P := fun t => BaseS q s0.memory ps st.memory A Ar t ∧ (fun _ : Locs => True) t.locals)
    ?_ (fun t _ ht => by subst ht; exact ⟨hB1, trivial⟩)
  refine item_call hC (lo := i1.toNat) (hi := i1.toNat + i2.toNat) 0 (by decide) (nm "f0")
    (by decide) (by decide) hSI hArB hAr64 hpsh hhi (Lx := fun _ => True) (fun _ _ h => h) hQ' ?_
  refine hoare_pre (P := fun t => BaseS q s0.memory ps st.memory A Ar t ∧ (fun _ : Locs => True) t.locals)
    ?_ (fun t _ h => ⟨h.1, trivial⟩)
  refine item_call hC (lo := i1.toNat) (hi := i1.toNat + i2.toNat) 1 (by decide) (nm "f1")
    (by decide) (by decide) hSI hArB hAr64 hpsh hhi (Lx := fun _ => True) (fun _ _ h => h) hQ' ?_
  refine hoare_pre (P := fun t => BaseS q s0.memory ps st.memory A Ar t ∧ (fun _ : Locs => True) t.locals)
    ?_ (fun t _ h => ⟨h.1, trivial⟩)
  refine item_call hC (lo := i1.toNat) (hi := i1.toNat + i2.toNat) 2 (by decide) (nm "f2")
    (by decide) (by decide) hSI hArB hAr64 hpsh hhi (Lx := fun _ => True) (fun _ _ h => h) hQ' ?_
  refine hoare_pre (P := fun t => BaseS q s0.memory ps st.memory A Ar t ∧
      ItLoc (nm "f2") i1.toNat (i1.toNat + i2.toNat) t.locals) ?_ (fun t _ h => ⟨h.1, h.2.2⟩)
  refine item_call hC (lo := i1.toNat) (hi := i1.toNat + i2.toNat) 3 (by decide) (nm "f3")
    (by decide) (by decide) hSI hArB hAr64 hpsh hhi
    (Lx := ItLoc (nm "f2") i1.toNat (i1.toNat + i2.toNat)) ?_ hQ' ?_
  · intro u v ⟨a, b, c, d, hf, h1, h2⟩
    exact ⟨a, b, c, d, by rw [lk_set_ne _ _ (by decide)]; exact hf, h1, h2⟩
  refine hoare_post (hoare_pre (tail_all hC A i1.toNat (i1.toNat + i2.toNat)) ?_) ?_
  · rintro u _ ⟨⟨-, -, -, hacc⟩, hf2, a, b, c, d, hf3, -, -⟩
    exact ⟨hacc, hf2, a, b, c, d, hf3⟩
  · intro r u _ _ h v hv hg
    exact finP_mono hlo (by omega) (h v hv hg)

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.dec_main
