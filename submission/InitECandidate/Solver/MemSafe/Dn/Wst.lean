import InitECandidate.Solver.MemSafe.Dn.Kit6
import InitECandidate.Solver.Wit.WsTrie
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `ws_storage_trie` on 32-byte keys (D5b): storage fact 1

**`csumm_wst_buf_G hGT hWS4`**: the capability summary of `ws_storage_trie` at
`Stor.storWstBufSig = ⟨[buf 32], [], [], true⟩` with `Stor.storWstCaps` (htab_set's), at
`guestHooksR`. The hypotheses are the two staged configuration facts: `ws : nptr tWSR`
(`hGT`), and the staged `tWSR` descriptor's slot 4 (`WS_STORAGE_TRIES`) is `ptr tHTh32` (`hWS4`).

```
var t = lds (ws + 32);                 -- `ptr tHTh32` (G: Globs, the WS hook's size, Fields)
var m = htab_get(t, root); if m.0 != 0 { return m.1 - 1; }
var node = decode_witness_to_mpt(lds (ws + 0), root);    -- `DwPre` from `G` (witG_of_gt)
htab_set(t, root, node + 1);           -- capabilities; the key is the caller's `buf 32`
return node;
```
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-! ## `htab_set` keeps `scratch_ptr` -/

def htsFns : EntryList :=
  [fnEntry Guest.Software.guestFn_htab_set, fnEntry Guest.Software.guestFn_htab_new_internal,
   fnEntry Guest.Software.guestFn_htab_new_leaf, fnEntry Guest.Software.guestFn_htab_new_node,
   fnEntry Guest.Software.guestFn_htab_grow, fnEntry Guest.Software.guestFn_htab_find_leaf,
   fnEntry Guest.Software.guestFn_htab_first_diff, fnEntry Guest.Software.guestFn_memeq,
   fnEntry Guest.Software.guestFn_memcpy, fnEntry Guest.Software.guestFn_alloc,
   fnEntry Guest.Software.guestFn_trap_with]

def htsNames : List MlS := htsFns.map Prod.fst

theorem htsFns_valid : ∀ e ∈ htsFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [htsFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 138) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 136) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 135) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 134) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 137) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 130) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem htsFns_gw_scratch :
    htsFns.all (fun e => gwFreeB (nm "scratch_ptr") htsNames e.2.2.1) = true := by decide_cbv

theorem hts_mem : htsNames.contains (nm "htab_set") = true := by decide_cbv

theorem hts_sp (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_set") (fun _ s _ t => t.globals.lookup gScratch = s.globals.lookup gScratch) :=
  funSpec_gw (σ := σ) (X := X) (by
    rw [hC]; exact closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) htsFns_valid
      htsFns_gw_scratch) hts_mem

/-! ## Table entries -/

theorem htabGet_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_get")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem htabSet_R :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_set")
      ⟨[.fits (.ptr Types.tHTh32), .buf 32, .any], [], [], true⟩ Stor.storWstCaps :=
  ctab% Rec.tab26_guestR

/-! ## Helpers -/

theorem eq_of_wordOf {v : ValueHOL 64} {w : BitVec 64} (h : wordOf v = some w) :
    v = .val (.word w) := by
  unfold wordOf at h
  split at h <;> simp_all

/-- A buffer stays writable across a call (no new object over its cells). -/
theorem bufOK_call {C : Cfg} {Γ Γ' : Gam} {q q' : Ptrs} (hq : q.Ordered) (hq' : q'.Ordered)
    (hmo : q.Mono q') (he : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q') {b n : Nat}
    (h : BufOK C Γ q b n) : BufOK C Γ' q' b n := by
  intro x hx
  rcases h x hx with ⟨o, ho, k, hk, hsl, hxc⟩ | ⟨hni, hal⟩
  · obtain ⟨o', ho', hb, ht, hsz⟩ := he o ho
    left
    refine ⟨o', ho', k, ?_, by rw [ht]; exact hsl, by rw [hxc, Obj.cell, Obj.cell, hb]⟩
    unfold Obj.HasSlot at hk ⊢
    omega
  · refine Or.inr ⟨fun ⟨o', ho', h1, h2⟩ => ?_, Spec.Mpt.Dec.allocated_mono hmo hal⟩
    rcases hnf o' ho' x h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hfr
    · exact hni ⟨o0, ho0, h3, h4⟩
    · exact (fresh_na hq hq' hmo hfr).1 hal

theorem wst_haC {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam} {p : Ptrs} :
    (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) Stor.storWstBufSig Stor.storWstCaps
      vs s Γ p).C = Types.guestC := by
  show upg Types.guestC Stor.storWstCaps = Types.guestC
  unfold upg
  rw [show capsG Stor.storWstCaps = [] by decide]
  rfl

/-- `G` at the base configuration from the activation's heap invariant. -/
theorem g_base {a : Act σ} (ha : ActOK a X) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) : G a.Cb a.H Γ s := by
  have := hh.1
  rw [ha.hupg] at this
  exact G_of_upg ha.hcaps this

/-- The value of `lds (ws + k)` and a non-null `ws`. -/
theorem ws_load {s : State σ} (hs : InCtx s guestCtx) {k : Nat} (hk : k < 2 ^ 20) {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [.var .global (nm "ws"), cw k])) = some v) :
    ∃ w, gword s (nm "ws") = some w ∧ nullMax ≤ w.toNat ∧
      v = .val (.word (rd s.memory (w + BitVec.ofNat 64 k))) := by
  obtain ⟨a, ha, hd, hva⟩ := Spec.Mpt.Leaves.ev_load1_inv' hv
  obtain ⟨w, c, hw, hc, he⟩ := Spec.Mpt.Leaves.ev_add2_inv' ha
  cases he
  have hg := Wit.ev_gvar hw
  rw [ev_cw] at hc
  cases hc
  refine ⟨w, by unfold gword; rw [hg], ?_, hva⟩
  have hns := MemSafe.nullSafe_guestCtx (w + BitVec.ofNat 64 k) (by rw [← hs.2.1]; exact hd)
  rw [BitVec.toNat_add, BitVec.toNat_ofNat] at hns
  unfold heapBase at hns
  unfold nullMax
  have := w.isLt
  by_contra hlt
  rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at hns
  omega

/-- **The table pointer**: `lds (ws + 32)` is a `tHTh32` object (staged `ws : nptr tWSR`, slot 4). -/
theorem ws_tab_fits (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (hWS4 : (Types.guestC.ty Types.tWSR).slot 4 = .ptr Types.tHTh32) {Γ : Gam} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) {w : BitVec 64}
    (hw : gword s (nm "ws") = some w) (hnn : nullMax ≤ w.toNat) :
    Fits Γ (.ptr Types.tHTh32) (rd s.memory (w + BitVec.ofNat 64 32)) := by
  obtain ⟨w', hw', hf⟩ := hG.choose_spec.2.2.2.2.2.1 _ _ hGT
  rw [hw] at hw'
  cases hw'
  rcases hf with hf | ⟨o, ho, hb, ht⟩
  · omega
  obtain ⟨p, hp, hord, hL, hF, -, -, hW⟩ := hG
  obtain ⟨-, -, hws⟩ := Hooks.wsRW_of_wf ht (hW o ho)
  have h40 : 40 ≤ o.size := hws.1
  have := hF o ho 4 (by unfold Obj.HasSlot; omega)
  rw [ht, hWS4] at this
  have e : o.cell 4 = w + BitVec.ofNat 64 32 := by rw [Obj.cell, hb]
  rw [e] at this
  exact this

/-- **Storage fact 1**: `ws_storage_trie`'s capability summary on 32-byte keys. -/
theorem csumm_wst_buf_G (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (hWS4 : (Types.guestC.ty Types.tWSR).slot 4 = .ptr Types.tHTh32) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      Stor.storWstBufSig Stor.storWstCaps := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine csumm_of_gp hF.hH hF.hC hF.hal hF.hAC hF.hNS (by decide) ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen Wit.code_wst hl
  match vs, hlen with
  | [v0], _ =>
  have hA := (hbind 0 (by decide) (by simp)).1
  obtain ⟨R, hR, hbuf⟩ := ha.hargs0.2 0 (.buf 32) v0 rfl rfl
  have hv0 := eq_of_wordOf hR
  subst hv0
  have haC : (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) Stor.storWstBufSig Stor.storWstCaps
      [.val (.word R)] s0 Γ0 p0).C = Types.guestC := wst_haC (σ := σ)
  refine hoareG_conseq (P := GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) Stor.storWstBufSig
      Stor.storWstCaps [.val (.word R)] s0 Γ0 p0)
      (fun m => m.lookup (nm "root") = some (.val (.word R)))
      (fun Γ q _ => BufOK Types.guestC Γ q R.toNat 32))
    (Q := GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) Stor.storWstBufSig Stor.storWstCaps
      [.val (.word R)] s0 Γ0 p0) (fun _ => False) (fun _ _ _ => True)
      (fun Γ q _ v => RetOK Γ p0 q [.val (.word R)] Stor.storWstBufSig.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨by rw [hloc]; exact hA, Γ0, p0, ext_refl _, hh, scrOld_refl _, hbuf⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', e1, e2, -, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, e4⟩
  unfold Wit.wstBody
  -- `var t = lds (ws + 32)`: a `tHTh32` table
  refine gp_decV ha.hH
    (L1 := fun v m => (∃ V : BitVec 64, v = .val (.word V)) ∧ m.lookup (nm "t") = some v ∧
      m.lookup (nm "root") = some (.val (.word R)))
    (E1 := fun v Γ q _ => (∀ V : BitVec 64, v = .val (.word V) → Fits Γ (.ptr Types.tHTh32) V) ∧
      BufOK Types.guestC Γ q R.toNat 32) (L2 := fun _ => False)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨fun V hV => ?_, hE⟩) ?_
    (fun _ _ _ h => h.elim)
  · obtain ⟨w, -, -, rfl⟩ := ws_load hs (k := 32) (by decide) hv
    exact ⟨⟨_, rfl⟩, by simp [setVarHOLFinite, FUPDATE], lk_keep (by decide) hL⟩
  · obtain ⟨w, hw, hnn, hv'⟩ := ws_load hs (k := 32) (by decide) hv
    rw [hv'] at hV
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hV
    subst hV
    exact ws_tab_fits hGT hWS4 (g_base ha hh') hw hnn
  intro v
  by_cases hw : ∃ V : BitVec 64, v = .val (.word V)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨V, rfl⟩ := hw
  -- `var m = htab_get(t, root)`
  refine gp_decCall ha (sumA_of_csumm htabGet_R) (funSpec_true _) (by simp) (fun _ => rfl)
    (L1 := fun _ m => m.lookup (nm "t") = some (.val (.word V)) ∧
      m.lookup (nm "root") = some (.val (.word R)))
    (E1 := fun _ Γ q _ => Fits Γ (.ptr Types.tHTh32) V ∧ BufOK Types.guestC Γ q R.toNat 32)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
      fun v hv _ => ⟨fits_ext co.ext (hE.1 V rfl), bufOK_call (heap_ord co.heap0)
        (heap_ord co.heap) co.mono co.ext co.nf hE.2⟩⟩)
    (fun s st v hL hsh => ⟨lk_keep (by decide) hL.2.1, lk_keep (by decide) hL.2.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  intro v2
  refine gp_seq (hoareG_ite (hoareG_pre (gp_ret ha.hH (fun s Γ q _ _ _ _ _ _ _ => retOK_nil))
    (fun s _ h => h.1)) (gp_skip fun s h => h.1)) ?_
  -- `var node = decode_witness_to_mpt(lds (ws + 0), root)`
  refine gp_decCall ha sumSpecA_dwtm_G (funSpec_true _) (by simp [Stor.storDwSig]) (fun _ => rfl)
    (L1 := fun v m => (∃ N : BitVec 64, v = .val (.word N)) ∧ m.lookup (nm "node") = some v ∧
      m.lookup (nm "t") = some (.val (.word V)) ∧ m.lookup (nm "root") = some (.val (.word R)))
    (E1 := fun _ Γ q _ => Fits Γ (.ptr Types.tHTh32) V ∧ BufOK Types.guestC Γ q R.toNat 32)
    (L2 := fun _ => False)
    (fun s Γ q hs hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨hQ.1,
      fun v hv _ => ⟨fits_ext co.ext hE.1, bufOK_call (heap_ord co.heap0) (heap_ord co.heap)
        co.mono co.ext co.nf hE.2⟩⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) hL.1, lk_keep (by decide) hL.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  · obtain ⟨a1, vs', rfl, h1, h2⟩ := evs_cons_inv hvs
    obtain ⟨a2, vs'', rfl, h2', h3⟩ := evs_cons_inv h2
    rw [evs_nil] at h3
    cases h3
    rw [ev_lw hL.2] at h2'
    cases h2'
    obtain ⟨w, hw, hnn, rfl⟩ := ws_load hs (k := 0) (by decide) h1
    have e0 : w + BitVec.ofNat 64 0 = w := by simp
    rw [e0] at hvs ⊢
    have hdw := Wit.dwPre_of_G hGT (g_base ha hh') hw hnn (.val (.word R))
    obtain ⟨db, rh, hv3, p, hp, hord, hN⟩ := hdw
    have hNR := Wit.ndbR_of_G hGT (g_base ha hh') hw hnn
    have hany : ∀ pt ∈ Stor.storDwSig.params, pt = PT.any := by decide
    exact ⟨(anyArgsG hany rfl hvs).1, fun x hx => argCells_any hany hx,
      fun callee => ⟨⟨db, rh, hv3, p,
        (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hp, hord, hN⟩,
        db, rh, hv3, by
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hv3
          obtain ⟨e, -⟩ := hv3
          rw [← e]; exact hNR⟩⟩
  intro v3
  by_cases hw : ∃ N : BitVec 64, v3 = .val (.word N)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨N, rfl⟩ := hw
  -- `htab_set(t, root, node + 1)`: capabilities; the key is the caller's buffer
  refine gp_seq (gp_callC ha (cs := Stor.storWstCaps)
    (show capSub Stor.storWstCaps Stor.storWstCaps = true by decide) htabSet_R (hts_sp hX)
    (by simp) (fun _ => rfl) (E' := fun _ _ _ => True)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hh' hext hh'' hmo hnf => ?_)) ?_
  · have hvs' : evs s [lv (nm "t"), lv (nm "root"), .op .add [lv (nm "node"), cw 1]] =
        some [.val (.word V), .val (.word R), .val (.word (N + BitVec.ofNat 64 1))] :=
      evs_cons (ev_lw hL.2.2.1) (evs_cons (ev_lw hL.2.2.2)
        (evs_cons (ev_add2 (ev_lw hL.2.1) (ev_cw s 1)) evs_nil))
    rw [hvs'] at hvs
    cases hvs
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x hx => ?_, fun callee c hc hne => ?_⟩
    · rcases i with _ | _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
      · exact ⟨V, rfl, hE.1⟩
      · exact ⟨R, rfl, hE.2⟩
      · trivial
    · obtain ⟨i, w, hw, h⟩ := hx
      rcases h with ⟨n, hn, ho⟩ | ⟨j, c, d, z, hj, -⟩
      · rcases i with _ | _ | _ | i <;> simp at hn
        subst hn
        simp [argW, wordOf] at hw
        subst hw
        exact Or.inr (Or.inl ⟨0, R, rfl, Or.inl ⟨32, rfl, ho⟩⟩)
      · rcases i with _ | _ | _ | i <;> simp at hj
    · simp [Stor.storWstCaps] at hc
      rcases hc with rfl | rfl <;> exact absurd rfl hne
  · refine ⟨scrOld_of_sp (layout_of_heap haC hh'') (heap_ord hh'') hnf ?_, fun _ => trivial⟩
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh'.2.1
    exact Spec.Mpt.Leaves.ptrs_sp_eq hpe hh''.2.1 hLc
  exact gp_ret ha.hH (fun s Γ q _ _ _ _ _ _ _ => retOK_nil)

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.bufOK_call
#print axioms InitECandidate.Solver.MemSafe.Dn.hts_sp
#print axioms InitECandidate.Solver.MemSafe.Dn.csumm_wst_buf_G
