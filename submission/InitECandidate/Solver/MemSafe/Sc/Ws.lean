import InitECandidate.Solver.MemSafe.Sc.Get
import InitECandidate.Solver.MemSafe.Dn.Wst
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

/-!
# `ws_get_code`: the length is below `2^32`

```
fun {1,1} ws_get_code(1 code_hash) {
  var 1 eq = memeq(code_hash, empty_code_hash, 32);
  if eq != 0 { return <0, 0>; }
  var {1,1,1} r = nodedb_lookup(lds 1 (ws + WS_CODEDB), code_hash);
  if r.0 == 0 { throw StateErr 2; }
  return <r.1, r.2>;
}
```
A plain hand proof (all callees take `any` arguments): the fold summary of `memeq` carries `G` to the
call of `nodedb_lookup`; there the code DB of the witness state is a frozen node DB (`WsRW`, slot 2),
so `NdbW` holds below `heap_ptr`, and `funSpec_nodedb_lookup_ret` puts the slice (a hit) in
`[heapBase, hp)`, so its length is below `heapEnd < 2^32`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.WaveHelpers InitECandidate.Solver.MemSafe.MptH

variable {σ : Type}

def wsBody : ProgHOL 64 :=
  .decCall (nm "eq") .one (nm "memeq")
    [lv (nm "code_hash"), .var .global (nm "empty_code_hash"), cw 32]
    (.seq (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0)) (.return (.rstruct [cw 0, cw 0])) .skip)
      (.decCall (nm "r") (.comb [.one, .one, .one]) (nm "nodedb_lookup")
        [.load .one (.op .add [.var .global (nm "ws"), cw 16]), lv (nm "code_hash")]
        (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0)) (.raise (nm "StateErr") (cw 2)) .skip)
          (.return (.rstruct [.rfield 1 (lv (nm "r")), .rfield 2 (lv (nm "r"))])))))

theorem entry_ws : fnEntry Guest.Software.guestFn_ws_get_code =
    (nm "ws_get_code", [(nm "code_hash", .one)], wsBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ws : guestCode (nm "ws_get_code") =
    some ([(nm "code_hash", .one)], wsBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 370) (by decide)) ⟨_, rfl⟩
    entry_ws

/-- The code DB of the witness state is a node DB below `heap_ptr` (`WsRW`, slot 2). -/
theorem ws_codedb_ndbw (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) {w : BitVec 64}
    (hw : gword s (nm "ws") = some w) (hnn : nullMax ≤ w.toNat) :
    ∃ p : Ptrs, ptrsOf s = some p ∧ p.Ordered ∧
      Spec.Mpt.Leaves.NdbW (rd s.memory (w + BitVec.ofNat 64 16)) p.hp s.memory := by
  obtain ⟨w', hw', hf⟩ := hG.choose_spec.2.2.2.2.2.1 _ _ hGT
  rw [hw] at hw'
  cases hw'
  rcases hf with hf | ⟨o, ho, hb, ht⟩
  · omega
  obtain ⟨p, hp, hord, hL, hF, -, -, hW⟩ := hG
  obtain ⟨-, -, hws⟩ := Hooks.wsRW_of_wf ht (hW o ho)
  have hN := hws.2.2.2
  have e : Hooks.txF s.memory o 2 = rd s.memory (w + BitVec.ofNat 64 16) := by
    unfold Hooks.txF Obj.cell; rw [hb]
  rw [e] at hN
  exact ⟨p, hp, hord, Wit.ndbW_of_ndbR hL hN⟩

theorem hp_lt : ∀ {p : Ptrs}, p.Ordered → p.hp < 2 ^ 32 := by
  intro p hord
  obtain ⟨-, h2, -⟩ := hord
  have : heapEnd < 2 ^ 32 := by decide
  omega

/-- **`ws_get_code`'s value fact**: under `G`, a returned `<x, y>` has `y < 2^32`. -/
theorem funSpec_ws_get_code :
    FunSpec σ guestCtx (nm "ws_get_code") (fun vs s r t => Good (some r) →
      ∀ Γ, G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ValP r) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  have hMemeq : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "memeq")
      ⟨[.any, .any, .any], [], [], false⟩ [] := ctab% Frames.tab26_guestR
  refine Frames.funSpec_of_hoareG (R := fun vs s r t => ∀ Γ,
    G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ValP r) ?_
  intro vs body callee rs hl s0 hs0 hloc
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_ws hl
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hA
  have lK : s0.locals.lookup (nm "code_hash") = some (.val (.word K)) := by rw [hloc]; exact hla
  have key : ∀ Γ, G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s0 →
      HoareG σ guestCtx (fun u => u = s0) wsBody (fun r _ => WR r) := by
    intro Γ hG
    unfold wsBody
    have hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR) := by decide
    refine hoareG_decCall (summ_funSpec hMemeq) ?_ ?_
    · intro s hs hpre vs hvs callee v st hR hst hsh
      subst hpre
      have hlen : vs.length = 3 := by rw [Rec.evs_len2 hvs]; rfl
      have hGe : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
        G_congr hH rfl rfl rfl rfl hG
      obtain ⟨p, hp, -⟩ := id hG
      obtain ⟨Γ1, p1, p2, core, -⟩ := hR (by simp [Good]) (by simp [Abortive]) Γ hGe
        ⟨p, hp, argsOK_any (by simp) (by rw [hlen]; rfl)⟩ (fun c hc => absurd hc (by simp))
      have hG1 := core.2.2.2.2.2.1
      have hG1' : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ1
          (setVarHOLFinite (nm "eq") v { st with locals := s.locals }) :=
        G_congr (s := st) hH rfl rfl rfl rfl hG1
      have lK1 : (setVarHOLFinite (nm "eq") v { st with locals := s.locals }).locals.lookup
          (nm "code_hash") = some (.val (.word K)) := by
        rw [lk_set_ne _ _ (by decide)]; exact lK
      refine hoareG_pre (P := fun t => G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ1 t ∧
        t.locals.lookup (nm "code_hash") = some (.val (.word K))) ?_
        (fun t _ ht => by subst ht; exact ⟨hG1', lK1⟩)
      refine hoareG_seq (R := fun r t => (r = none ∧ (G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ1 t ∧
          t.locals.lookup (nm "code_hash") = some (.val (.word K)))) ∨
          (∃ rr, r = some rr ∧ ValP rr)) ?_ ?_ ?_
      · refine hoareG_ite ?_ ?_
        · refine hoareG_return fun s' hs' ⟨hP, w, hw, hne⟩ v' hv' => Or.inr ⟨_, rfl, ?_⟩
          rw [ev_rstruct (evs_cons (ev_cw s' 0) (evs_cons (ev_cw s' 0) evs_nil))] at hv'
          cases hv'
          intro v'' hv'' x y hxy
          cases hv''
          simp only [wv, List.map, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
            HolWordLab.word.injEq, and_true] at hxy
          obtain ⟨-, rfl⟩ := hxy
          decide
        · exact hoareG_skip fun s' _ h => Or.inl ⟨rfl, h.1⟩
      · intro r t _ hr _ h
        rcases h with ⟨h, -⟩ | ⟨rr, hrr, hv⟩
        · exact absurd h hr
        · subst hrr
          intro rr' h'
          cases h'
          exact hv
      · refine hoareG_pre (P := fun t => G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ1 t ∧
          t.locals.lookup (nm "code_hash") = some (.val (.word K))) ?_
          (fun t _ h => by
            rcases h with ⟨-, h⟩ | ⟨rr, h, -⟩
            · exact h
            · cases h)
        refine hoareG_decCall (Spec.Mpt.Leaves.funSpec_nodedb_lookup_ret hX) ?_ ?_
        · intro s2 hs2 ⟨hG2, lK2⟩ vs2 hvs2 callee2 v2 st2 hR2 hst2 hsh2
          obtain ⟨u1, vs1, rfl, h1, h2⟩ := evs_cons_inv hvs2
          obtain ⟨u2, vs3, rfl, h2', h3⟩ := evs_cons_inv h2
          rw [evs_nil] at h3
          cases h3
          obtain ⟨w, hw, hnn, rfl⟩ := Dn.ws_load hs2 (k := 16) (by decide) h1
          obtain ⟨p3, hp3, hord3, hN⟩ := ws_codedb_ndbw hGT hG2 hw hnn
          have hNl := hR2 v2 rfl _ u2 p3.hp rfl hN
          obtain ⟨ws3, hws3, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh2
          match ws3, hws3 with
          | [a3, b3, c3], _ =>
          have hNl' := hNl a3 b3 c3 rfl
          have hhp := hp_lt hord3
          refine hoareG_pre (P := fun t => t.locals.lookup (nm "r") = some (wv [a3, b3, c3])) ?_
            (fun t _ ht => by subst ht; exact lk_set_self _ _ _)
          refine hoareG_seq (R := fun r t => (r = none ∧ (t.locals.lookup (nm "r") = some (wv [a3, b3, c3]) ∧
              a3 ≠ 0)) ∨ (∃ rr, r = some rr ∧ Abn rr)) ?_ ?_ ?_
          · refine hoareG_ite ?_ ?_
            · refine hoareG_raise fun s' hs' ⟨hP, w', hw', hne⟩ v' hv' => Or.inr ⟨_, rfl, Or.inl ⟨_, _, rfl⟩⟩
            · refine hoareG_skip fun s' _ ⟨hP, hc⟩ => Or.inl ⟨rfl, hP, ?_⟩
              obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
              have hr : ev s' (lv (nm "r")) = some (wv [a3, b3, c3]) := by rw [ev_lv]; exact hP
              rw [ev_rfield_wv hr (i := 0) (by simp)] at hx
              rw [ev_cw] at hy
              cases hx
              cases hy
              exact fun h => Spec.equal_false hxy (by simpa using h)
          · intro r t _ hr _ h
            rcases h with ⟨h, -⟩ | ⟨rr, hrr, hab⟩
            · exact absurd h hr
            · subst hrr
              exact wr_abn hab
          · refine hoareG_return fun s' hs' h v' hv' => ?_
            rcases h with ⟨-, hP, ha3⟩ | ⟨rr, h, -⟩
            swap
            · cases h
            have hr : ev s' (lv (nm "r")) = some (wv [a3, b3, c3]) := by rw [ev_lv]; exact hP
            have e1 : ev s' (.rfield 1 (lv (nm "r"))) = some (.val (.word b3)) :=
              ev_rfield_wv hr (i := 1) (by simp)
            have e2 : ev s' (.rfield 2 (lv (nm "r"))) = some (.val (.word c3)) :=
              ev_rfield_wv hr (i := 2) (by simp)
            rw [ev_rstruct (evs_cons e1 (evs_cons e2 evs_nil))] at hv'
            cases hv'
            obtain ⟨hb1, hb2⟩ := hNl' ha3
            intro rr hrr v'' hv'' x y hxy
            cases hrr
            cases hv''
            simp only [wv, List.map, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
              HolWordLab.word.injEq, and_true] at hxy
            obtain ⟨-, rfl⟩ := hxy
            omega
        · intro s2 hs2 _ vs2 hvs2 callee2 r2 st2 hR2 hst2 habn
          exact wr_abn habn
    · intro s hs hpre vs hvs callee r st hR hst habn
      exact wr_abn habn
  intro u hu hp hg rr hrr Γ hG
  exact key Γ hG u hu hp hg rr hrr

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.funSpec_ws_get_code
