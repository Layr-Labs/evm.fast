import InitECandidate.Solver.Band4.Mnk
import InitECandidate.Solver.Band2.DeleteNode
import InitECandidate.Solver.Band2.NodeRlp

/-!
# `mpt_set` (band #11): the conditional cost (trie-inv)

```
fun 1 mpt_set(1 m, 1 key, 1 klen, 1 vptr, 1 vlen) {
  var {1,1} nk = mpt_nibble_key(m, key, klen);
  var root = lds 1 (m + 0);
  if (vptr == 0) || (vlen == 0) { root = _mpt_delete_node(root, nk.0, nk.1, 0); }
  else { root = _mpt_insert_node(root, nk.0, nk.1, 0, vptr, vlen); }
  st m + 0, root;
  return 0; }
```

**`mpt_set_condCost hF hK : CondCost σ guestCtx guestC H (nm "mpt_set") msSig MsPre msB`**, generic in
the hook family `H` (`hF : FoldOK`, `hK` the `keccak256` summary: the hypotheses of
`MptH.sumSpec_mpt_nibble_key`).

* `MRec Γ s m`: the `mpt_new` record `m` is an allocated heap block outside every `Γ` object, and
  its root slot is `0` or a `Γ` node (`RootOK`). Being outside `Γ` is what keeps the root slot
  across `mpt_nibble_key` (its summary writes only `WCell Γ`, argument and unallocated cells).
* `MsPre`: `MRec`, `2 klen < 2^64`, and on the delete path (`vptr = 0 ∨ vlen = 0`) the secured flag
  is set or `klen % 4 = 0`: then the nibble key has `L mod 8 = 0`, which `Spec.Mpt.KeyNib`
  (all byte orders) needs (`keyNib_of_nib`; see `trie-inv-status.md` §1.3).
* The delete call gets `DelPre` from `Band.delPre_of_G` (`G` after `mpt_nibble_key` from its
  summary, the root fitting `nodeU`, `KeyNib` from `ret_mpt_nibble_key`). The insert call and the
  suffix are all-states (table).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.Band4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf gword heapBase heapEnd nullMax AllocOK rd Gam
  Obj Fits InObj G Hooks Sig SumCore Ext CondCost ArgsOK ArgCells WCell ProtCell FoldOK CSumm)
open InitECandidate.Solver.MemSafe.Types (guestC nodeU tB40)
open InitECandidate.Solver.Band (NdOf nodeTys)

variable {σ : Type}

/-! ## The code -/

def msCond : ExpHOL 64 :=
  .cmp .notEqual (cw 0) (.op .or [.cmp .equal (lv (nm "vptr")) (cw 0),
    .cmp .equal (lv (nm "vlen")) (cw 0)])

def msDel : ProgHOL 64 :=
  .call (some (some (.local, nm "root"), none)) (nm "_mpt_delete_node")
    [lv (nm "root"), .rfield 0 (lv (nm "nk")), .rfield 1 (lv (nm "nk")), cw 0]

def msIns : ProgHOL 64 :=
  .call (some (some (.local, nm "root"), none)) (nm "_mpt_insert_node")
    [lv (nm "root"), .rfield 0 (lv (nm "nk")), .rfield 1 (lv (nm "nk")), cw 0, lv (nm "vptr"),
      lv (nm "vlen")]

def msTail : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "m"), cw 0]) (lv (nm "root"))) (.return (cw 0))

def msBody : ProgHOL 64 :=
  .decCall (nm "nk") (.comb [.one, .one]) (nm "mpt_nibble_key") [lv (nm "m"), lv (nm "key"), lv (nm "klen")]
    (.dec (nm "root") .one (.load .one (.op .add [lv (nm "m"), cw 0]))
      (.seq (.ite msCond msDel msIns) msTail))

def params_ms : List (MlS × ShapeHOL) :=
  [(nm "m", .one), (nm "key", .one), (nm "klen", .one), (nm "vptr", .one), (nm "vlen", .one)]

theorem entry_ms : fnEntry Guest.Software.guestFn_mpt_set =
    (nm "mpt_set", params_ms, msBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ms : guestCode (nm "mpt_set") = some (params_ms, msBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 280) (by decide)) ⟨_, rfl⟩
    entry_ms

/-! ## The record and the precondition -/

/-- The trie root slot holds `0` or a `Γ` node (what `MrPre` and `DelPre` need). -/
def RootOK (Γ : Gam) (v : BitVec 64) : Prop := v = 0 ∨ NdOf Γ v

theorem fits_of_rootOK {Γ : Gam} {v : BitVec 64} (h : RootOK Γ v) : Fits Γ nodeU v := by
  rcases h with rfl | ⟨o, ho, hb, ht⟩
  · left; show (0 : BitVec 64).toNat < nullMax; decide
  · right; exact ⟨o, ho, hb, ht⟩

theorem rootOK_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {v : BitVec 64} (h : RootOK Γ v) : RootOK Γ' v := by
  rcases h with h | ⟨o, ho, hb, ht⟩
  · exact Or.inl h
  · obtain ⟨o', ho', hb', ht', -⟩ := he o ho
    exact Or.inr ⟨o', ho', hb'.trans hb, ht' ▸ ht⟩

/-- **The `mpt_new` record** `m`: a 16-byte allocated heap block outside every `Γ` object, whose
root slot is `0` or a `Γ` node. -/
def MRec (Γ : Gam) (s : State σ) (m : BitVec 64) : Prop :=
  ∃ p : Ptrs, ptrsOf s = some p ∧ m.toNat % 8 = 0 ∧ heapBase ≤ m.toNat ∧ m.toNat + 16 ≤ p.hp ∧
    ¬ InObj Γ m.toNat ∧ ¬ InObj Γ (m.toNat + 8) ∧ RootOK Γ (rd s.memory m)

def msSig : Sig := ⟨[.any, .any, .any, .any, .any], [], [], true⟩

/-- **`mpt_set`'s precondition.** -/
def MsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ m key klen vptr vlen : BitVec 64,
    vs = [.val (.word m), .val (.word key), .val (.word klen), .val (.word vptr), .val (.word vlen)] ∧
    MRec Γ s m ∧ 2 * klen.toNat < 2 ^ 64

def bMnk : Nat := 680564733841876927461704793001113419818
def bIns : Nat := 351517697181654122901389248194218427720216074606996541669506

/-- `mpt_set`'s bound. -/
def msB : Nat := 1 + bMnk + (max (1 + Band2.dnB + 0) (1 + bIns + 0) + (0 + 0))

/-! ## `KeyNib` from the nibble buffer -/

/-- A buffer of nibbles at byte order `be0` is `KeyNib be0`. -/
theorem keyNib_of_nib {M : MemSafe.Mem} {be0 : Bool} {K L : BitVec 64}
    (hKL : K.toNat + L.toNat ≤ heapEnd) (h : NibOK M be0 K L.toNat) :
    Mpt.KeyNib be0 M K L (BitVec.ofNat 64 0) :=
  ⟨by simp, hKL, fun j _ hj => h j hj⟩

/-! ## Entry facts from `G` -/

theorem mnkIn_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {KL : BitVec 64}
    (hKL : 2 * KL.toNat < 2 ^ 64) : MnkIn s KL := by
  obtain ⟨p, hp, hord, -⟩ := id hG
  obtain ⟨ks, kp, hks, hkp, ka, pa, -, kh, -, ph, -⟩ := Band.kbSep_of_G hG hp
  obtain ⟨w, hw, -, -, hwh, -⟩ := Band.buf_global (n := 32) hG hp (g := nm "mpt_hash_scratch")
    (t := tB40) MemSafe.Types.gt_mpt_hash_scratch rfl (by decide) (by decide)
  have hE : p.hp ≤ heapEnd := hord.2.1
  have : heapEnd < 2 ^ 63 := by decide
  exact ⟨⟨p, hp, hord⟩, hKL, ⟨ks, kp, hks, hkp, ka, pa, by omega, by omega⟩, w, hw, by omega⟩

theorem mnk_argsOK {Γ : Gam} {p : Ptrs} {vs : List (ValueHOL 64)} (h : vs.length = 3) :
    ArgsOK guestC Γ p MemSafe.MptH.mnkSig.params vs := by
  refine ⟨by rw [h]; rfl, fun i pt v h1 _ => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [MemSafe.MptH.mnkSig] at h1 <;> subst h1 <;> trivial

/-- A cell outside `Γ` in the live heap survives `mpt_nibble_key`. -/
theorem mnk_cell_kept {H : Hooks σ} {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H MemSafe.MptH.mnkSig (fun a => ProtCell guestC Γ a ∧ False) Γ s vs r t Γ' p p')
    (hG : G guestC H Γ s) {a : BitVec 64} (ha1 : heapBase ≤ a.toNat) (ha2 : a.toNat < p.hp)
    (hno : ¬ InObj Γ a.toNat) : t.memory a = s.memory a := by
  obtain ⟨hp, -, -, -, -, -, hmod, -⟩ := hc
  apply hmod
  rintro (⟨o, ho, k, hk, -, rfl⟩ | ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -⟩⟩ | hal | ⟨-, hf⟩)
  · obtain ⟨p0, -, hord, hL, -⟩ := hG
    exact hno (MemSafe.cell_in hord hL ho hk)
  · rcases i with _ | _ | _ | i <;> simp [MemSafe.MptH.mnkSig] at hn
  · rcases i with _ | _ | _ | i <;> simp [MemSafe.MptH.mnkSig] at hn
  · exact hal (Or.inl ⟨ha1, ha2⟩)
  · exact hf

/-! ## The condition -/

theorem ms_cond_true {u : State σ} {P V w : BitVec 64}
    (hP : u.locals.lookup (nm "vptr") = some (.val (.word P)))
    (hV : u.locals.lookup (nm "vlen") = some (.val (.word V)))
    (h : ev u msCond = some (.val (.word w))) (hw : w ≠ 0) : P = 0 ∨ V = 0 := by
  by_contra hc
  have hP0 : P ≠ 0 := fun e => hc (Or.inl e)
  have hV0 : V ≠ 0 := fun e => hc (Or.inr e)
  have e1 : ev u (.cmp .equal (lv (nm "vptr")) (cw 0)) = some (.val (.word 0)) := by
    rw [ev_cmp (ev_lw hP) (ev_cw _ 0)]
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]
    exact hP0
  have e2 : ev u (.cmp .equal (lv (nm "vlen")) (cw 0)) = some (.val (.word 0)) := by
    rw [ev_cmp (ev_lw hV) (ev_cw _ 0)]
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]
    exact hV0
  have e3 : ev u (.op .or [.cmp .equal (lv (nm "vptr")) (cw 0), .cmp .equal (lv (nm "vlen")) (cw 0)]) =
      some (.val (.word 0)) := by
    rw [ev_op2 e1 e2]
    rfl
  unfold msCond at h
  rw [ev_cmp (ev_cw _ 0) e3] at h
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at h
  exact hw h.symm

/-! ## The cost -/

/-- **`mpt_set`'s conditional cost.** -/
theorem mpt_set_condCost {H : Hooks σ} (hF : FoldOK σ guestCtx guestC H)
    (hK : CSumm σ guestCtx guestC H (nm "keccak256") (MemSafe.WaveHelpers.sigKeccak 32 false) []) :
    CondCost σ guestCtx guestC H (nm "mpt_set") msSig MsPre msB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_ms hl
  unfold msBody msB
  refine Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest (f := nm "mpt_nibble_key")
      (B := bMnk) rfl)) (fun _ _ _ _ _ _ => trivial)
    ((MemSafe.MptH.sumSpec_mpt_nibble_key hF hK).and ret_mpt_nibble_key) ?_
  rintro s _ ⟨hloc, Γ, p, hG, hp, -, m, key, klen, vptr, vlen, rfl, hrec, hkl2⟩ vs' hvs'
    callee' v st ⟨hS, hRet⟩ _ _
  have hm : s.locals.lookup (nm "m") = some (.val (.word m)) := by
    rw [hloc]; exact (hbind 0 (by decide) (by simp)).1
  have hkey : s.locals.lookup (nm "key") = some (.val (.word key)) := by
    rw [hloc]; exact (hbind 1 (by decide) (by simp)).1
  have hklen : s.locals.lookup (nm "klen") = some (.val (.word klen)) := by
    rw [hloc]; exact (hbind 2 (by decide) (by simp)).1
  have hvp : s.locals.lookup (nm "vptr") = some (.val (.word vptr)) := by
    rw [hloc]; exact (hbind 3 (by decide) (by simp)).1
  have hvl : s.locals.lookup (nm "vlen") = some (.val (.word vlen)) := by
    rw [hloc]; exact (hbind 4 (by decide) (by simp)).1
  rw [evs_cons (ev_lw hm) (evs_cons (ev_lw hkey) (evs_cons (ev_lw hklen) evs_nil))] at hvs'
  cases hvs'
  -- the entry state of `mpt_nibble_key`
  have hG1 : G guestC H Γ (callEntryStateHOLFinite s callee') :=
    MemSafe.G_congr (s := s) (t := callEntryStateHOLFinite s callee') hF.hH rfl rfl rfl rfl hG
  have hp1 : ptrsOf (callEntryStateHOLFinite s callee') = some p := by
    rw [mnk_ptrs (t := callEntryStateHOLFinite s callee') (s := s) rfl]; exact hp
  obtain ⟨Γ', p1, p', hcore, -⟩ := hS (mnk_good_ret v) (by simp [MemSafe.Abortive]) Γ hG1
    ⟨p, hp1, mnk_argsOK rfl⟩ (fun KL h => by cases h; exact hkl2)
  have hp1e : p1 = p := by
    have := hcore.1; rw [hp1] at this; cases this; rfl
  subst hp1e
  have hG' : G guestC H Γ' st := hcore.2.2.2.2.2.1
  have hext : Ext Γ Γ' := hcore.2.2.2.1
  obtain ⟨nb, L, rfl, hbe, hnb8, -, hnbL, hsec1, hsec2, hnib⟩ :=
    hRet m key klen rfl (mnkIn_of_G hG1 hkl2) v rfl
  -- the root slot is kept
  obtain ⟨pr, hpr, hm8, hm1, hm16, hmno, -, hroot⟩ := hrec
  rw [hp] at hpr
  cases hpr
  have hkeep : st.memory m = s.memory m :=
    mnk_cell_kept hcore hG1 hm1 (by omega) hmno
  have hroot' : RootOK Γ' (rd st.memory m) := by
    unfold rd; rw [hkeep]; exact rootOK_ext hext hroot
  -- the continuation
  refine Inv.costP_dec fun t _ ht w hw _ => ?_
  subst ht
  have hmt : (setVarHOLFinite (nm "nk") (.rStruct [.val (.word nb), .val (.word L)])
      { st with locals := s.locals }).locals.lookup (nm "m") = some (.val (.word m)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hm
  have hw' := Band2.ev_lds_lv hmt hw
  subst hw'
  have e0 : m + BitVec.ofNat 64 0 = m := by simp
  rw [e0]
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_ite ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq (cost_store _ _) (cost_return _)))
  · -- delete
    refine Inv.costP_call (Bh := 0) Band2.mpt_delete_node_costP ?_ (by intro _ _ _ _ h; cases h)
    rintro u _ ⟨hu, cw', hc, hc0⟩ vs2 hvs2 callee2
    have hl_root : u.locals.lookup (nm "root") = some (.val (.word (rd st.memory m))) := by
      rw [hu]; exact lk_set_self _ _ _
    have hl_nk : u.locals.lookup (nm "nk") = some (.rStruct [.val (.word nb), .val (.word L)]) := by
      rw [hu, lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    have hl_other : ∀ x, x ≠ nm "root" → x ≠ nm "nk" → u.locals.lookup x = s.locals.lookup x := by
      intro x h1 h2
      rw [hu, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2)]
    have hnkv : ev u (lv (nm "nk")) = some (.rStruct [.val (.word nb), .val (.word L)]) := hl_nk
    rw [evs_cons (ev_lw hl_root) (evs_cons (ev_rfield hnkv 0) (evs_cons (ev_rfield hnkv 1)
      (evs_cons (ev_cw _ 0) evs_nil)))] at hvs2
    cases hvs2
    have hum : (callEntryStateHOLFinite u callee2).memory = st.memory := by rw [hu]; rfl
    have hug : (callEntryStateHOLFinite u callee2).globals = st.globals := by rw [hu]; rfl
    have hud : (callEntryStateHOLFinite u callee2).memaddrs = st.memaddrs := by rw [hu]; rfl
    have hub : (callEntryStateHOLFinite u callee2).be = st.be := by rw [hu]; rfl
    have hKN := keyNib_of_nib hnbL hnib
    have hKN' : Mpt.KeyNib (callEntryStateHOLFinite u callee2).be (callEntryStateHOLFinite u callee2).memory nb L
        (BitVec.ofNat 64 0) := by
      rw [hum, hub, hbe]; exact hKN
    exact Band.delPre_of_G (MemSafe.G_congr hF.hH hum hug hud hub hG') (fits_of_rootOK hroot') hKN'
  · -- insert
    exact Inv.costP_of_cost (cost_call (MemSafe.Wire.calleeCost_guest (f := nm "_mpt_insert_node")
      (B := bIns) rfl) (by intro _ _ _ _ h; cases h))

end InitECandidate.Solver.Band4

#print axioms InitECandidate.Solver.Band4.keyNib_of_nib
#print axioms InitECandidate.Solver.Band4.mpt_set_condCost
