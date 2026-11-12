import InitECandidate.Solver.MemSafe.Rec.TxKit2
import InitECandidate.Solver.MemSafe.Rec.TxTile
import InitECandidate.Solver.MemSafe.Rec.DecPayCode
import InitECandidate.Solver.MemSafe.Mod.Args
import InitECandidate.Solver.MemSafe.ShardsJL.Tabs
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_blob_hashes`: the code and the hand summary

```
fun {1,1} decode_blob_hashes(1 p, 1 len) {
  var {1,1} lst = rlp_list_to_slices(p, len);
  var 1 buf = alloc(lst.1 * 32);
  var i = 0;
  while i <+ lst.1 { var 1 h = tx_fixed_bytes(lst.0, i, 32); memcpy(buf + i * 32, h, 32); i = i + 1; }
  return <buf, lst.1>;
}
```
`buf` is an unadopted heap block (the `DI` block); the summary is `bhSig = ⟨[any, any], [], [], false⟩`
with the precondition `SlPre` (the payload `[p, p + len)` lies in allocated heap) and the value fact
`cnt <= len` for the returned `<buf, cnt>` (`BhQ`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot)
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def bhCnt : ExpHOL 64 := .rfield 1 (lv (nm "lst"))

def dbhLoop : ProgHOL 64 :=
  .decCall (nm "h") .one (nm "tx_fixed_bytes") [.rfield 0 (lv (nm "lst")), lv (nm "i"), cw 32]
    (.seq (callD (nm "memcpy")
      [.op .add [lv (nm "buf"), .panop .mul [lv (nm "i"), cw 32]], lv (nm "h"), cw 32])
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def bhWhile : ProgHOL 64 := .while (.cmp .lower (lv (nm "i")) bhCnt) dbhLoop

def bhRet : ProgHOL 64 := .return (.rstruct [lv (nm "buf"), bhCnt])

def bhRest : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq bhWhile bhRet)

def bhAlloc : ProgHOL 64 :=
  .decCall (nm "buf") .one (nm "alloc") [.panop .mul [bhCnt, cw 32]] bhRest

def dbhBody : ProgHOL 64 :=
  .decCall (nm "lst") (.comb [.one, .one]) (nm "rlp_list_to_slices") [lv (nm "p"), lv (nm "len")] bhAlloc

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_blob_hashes : fnEntry Guest.Software.guestFn_decode_blob_hashes =
    (nm "decode_blob_hashes", [(nm "p", .one), (nm "len", .one)], dbhBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_blob_hashes : guestCode (nm "decode_blob_hashes") =
    some ([(nm "p", .one), (nm "len", .one)], dbhBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 304) (by decide)) ⟨_, rfl⟩
    entry_decode_blob_hashes


/-! ## Signatures and locals -/

def bhSig : Sig := ⟨[.any, .any], [], [], false⟩
def txfSig : Sig := ⟨[.any, .any, .any], [], [], false⟩
def rlsSig : Sig := ⟨[.any, .any], [], [], false⟩

/-- The pure value fact about the result `<buf, cnt>`: `cnt <= len`. -/
def BhQ (N : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∀ buf cnt : BitVec 64, v = .rStruct [.val (.word buf), .val (.word cnt)] → cnt.toNat ≤ N.toNat

def BhLp (arr cnt Ar I : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "lst") = some (.rStruct [.val (.word arr), .val (.word cnt)]) ∧
  m.lookup (nm "buf") = some (.val (.word Ar)) ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
  I.toNat ≤ cnt.toNat

def BhLx (arr cnt Ar : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "lst") = some (.rStruct [.val (.word arr), .val (.word cnt)]) ∧
  m.lookup (nm "buf") = some (.val (.word Ar))

theorem ev_bhCnt {s : State σ} {arr cnt : BitVec 64}
    (h : s.locals.lookup (nm "lst") = some (.rStruct [.val (.word arr), .val (.word cnt)])) :
    ev s bhCnt = some (.val (.word cnt)) :=
  Spec.Mpt.Dec.ev_rfield_w h rfl

/-! ## The loop -/

theorem bh_loop {a : Act σ} (ha : ActOK a X)
    (hfix : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig [])
    (hmc : CSumm σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy [])
    {arr cnt Ar : BitVec 64} (hbig : Ar.toNat + 32 * cnt.toNat ≤ heapEnd) {Φ : Prop} :
    HoareG σ X (DI a Ar (32 * cnt.toNat) (fun m => ∃ I, BhLp arr cnt Ar I m) (fun _ _ _ _ => Φ))
      bhWhile (DQ a Ar (32 * cnt.toNat) (BhLx arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  have hse := heapEnd_lt64
  refine hoareG_whileDI ha.hH (Lx := BhLx arr cnt Ar) ?_ ?_
  swap
  · intro s hs hD hc
    exact di_mono (fun m ⟨I, h1, h2, h3, h4⟩ => ⟨h1, h2⟩) (fun _ _ _ _ h => h) hD
  refine hoareG_pre (P := DI a Ar (32 * cnt.toNat)
    (fun m => ∃ I, BhLp arr cnt Ar I m ∧ I.toNat < cnt.toNat) (fun _ _ _ _ => Φ)) ?_ ?_
  swap
  · intro s hs ⟨hD, hc⟩
    obtain ⟨⟨I, h1, h2, h3, h4⟩, Γ, q, he, hh, hB, hn, hE⟩ := hD
    have hlt := lower_true (cmp_true (ev_lw h3) (ev_bhCnt h1) hc)
    exact ⟨⟨I, ⟨h1, h2, h3, h4⟩, hlt⟩, Γ, q, he, hh, hB, hn, hE⟩
  unfold dbhLoop
  have hn32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  refine hoareG_decCallDQ ha hfix (funSpec_true _) (by simp [txfSig]) (by simp [txfSig])
    (L := fun m => ∃ I, BhLp arr cnt Ar I m ∧ I.toNat < cnt.toNat) (E := fun _ _ _ _ => Φ)
    (L' := fun v m => ∃ I, (BhLp arr cnt Ar I m ∧ I.toNat < cnt.toNat) ∧
      ∃ w : BitVec 64, v = .val (.word w) ∧ m.lookup (nm "h") = some v)
    (E' := fun _ _ _ _ _ => Φ)
    (L2 := fun _ m => ∃ I, BhLp arr cnt Ar I m) (E2 := fun _ _ _ _ _ => Φ)
    (Lf := fun m => ∃ I, BhLp arr cnt Ar I m) (Ef := fun _ _ _ _ => Φ) ?_ ?_ ?_ ?_ ?_ (fun _ _ _ _ _ h => h)
  · intro s hs ⟨I, ⟨h1, h2, h3, h4⟩, hlt⟩ Γ q he hh hB hn hE vs hvs
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w h1 rfl) (evs_cons (ev_lw h3)
      (evs_cons (ev_cw _ 32) evs_nil))] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [txfSig]) rfl, fun x hx => absurd hx (argCells_any (by simp [txfSig]))⟩
  · intro s st v ⟨I, ⟨h1, h2, h3, h4⟩, hlt⟩ hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    refine ⟨I, ⟨⟨?_, ?_, ?_, h4⟩, hlt⟩, w, rfl, lk_set_self _ _ _⟩
    · rw [lk_set_ne _ _ (by decide)]; exact h1
    · rw [lk_set_ne _ _ (by decide)]; exact h2
    · rw [lk_set_ne _ _ (by decide)]; exact h3
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨Γ'', q'', he'', hh'', hB''⟩ := coa_keep he co hB
    exact ⟨Γ'', q'', he'', hh'', hB'', hE⟩
  · intro v
    refine hoareG_seqDQ (E := fun _ _ _ _ => Φ)
      (hoareG_callDIA ha hmc (funSpec_true _) (by simp [Helpers.sigMemcpy])
        (by simp [Helpers.sigMemcpy]) (E := fun _ _ _ _ => Φ) (E' := fun _ _ _ _ => Φ) ?_ ?_) ?_
    · intro s hs ⟨I, ⟨⟨h1, h2, h3, h4⟩, hlt⟩, w, hv, hh'⟩ Γ q he hh hB hn hE vs hvs
      rw [hv] at hh'
      rw [evs_cons (ev_add2 (ev_lw h2) (ev_mul2 (ev_lw h3) (ev_cw _ 32)))
        (evs_cons (ev_lw hh') (evs_cons (ev_cw _ 32) evs_nil))] at hvs
      cases hvs
      have hI32 : (I * BitVec.ofNat 64 32).toNat = I.toNat * 32 := by
        rw [BitVec.toNat_mul]; exact Nat.mod_eq_of_lt (by rw [hn32]; omega)
      have hD : (Ar + I * BitVec.ofNat 64 32).toNat = Ar.toNat + 32 * I.toNat := by
        rw [BitVec.toNat_add, hI32]
        have : Ar.toNat + I.toNat * 32 < 2 ^ 64 := by omega
        rw [Nat.mod_eq_of_lt this]; omega
      refine ⟨?_, ?_⟩
      · exact Mod.argsOK_mc (bufOK_blk hB (by rw [hD]; omega) (by rw [hD, hn32]; omega))
      · intro x hx
        obtain ⟨o1, o2, o3⟩ := Mod.argCells_mc hx
        refine Or.inr (Or.inr (Or.inl (hn x ⟨o1, ?_, ?_⟩)))
        · rw [hD] at o2; omega
        · rw [hD, hn32] at o3; omega
    · intro s st vs callee v' Γ Γ' q q' _ _ _ _ _ _ hE
      exact hE
    · refine hoareG_assignDI ha.hH ?_
      intro s hs ⟨I, ⟨⟨h1, h2, h3, h4⟩, hlt⟩, w, hv, hh'⟩ v' hv'
      rw [ev_add2 (ev_lw h3) (ev_cw _ 1)] at hv'
      cases hv'
      have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
        rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by simp; omega)
      refine ⟨I + BitVec.ofNat 64 1, ?_, ?_, lk_set_self _ _ _, by omega⟩
      · rw [lk_set_ne _ _ (by decide)]; exact h1
      · rw [lk_set_ne _ _ (by decide)]; exact h2
  · intro m0 m v _ ⟨I, h1, h2, h3, h4⟩
    refine ⟨I, ?_, ?_, ?_, h4⟩
    · rw [lookup_resVarEq_ne _ _ (by decide)]; exact h1
    · rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2
    · rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3

theorem co_keep {a : Act σ} {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {Ar : BitVec 64} {n : Nat} (he : Ext a.Γ0 Γ) (co : COut a sg' Γ Γ' q q' s st)
    (hB : BlkF Ar n Γ q) :
    ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' :=
  ⟨Γ', q', ext_trans he co.ext, co.heap, blkF_after (heap_ord co.heap0) (heap_ord co.heap) co.mono co.nf hB⟩

/-! ## After the allocation -/

theorem bh_rest {a : Act σ} (ha : ActOK a X) (hret : a.sg.ret = [])
    (hfix : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig [])
    (hmc : CSumm σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy [])
    {arr cnt Ar N : BitVec 64} (hbig : Ar.toNat + 32 * cnt.toNat ≤ heapEnd)
    (hcn : cnt.toNat ≤ N.toNat) :
    HoareG σ X (DI a Ar (32 * cnt.toNat) (BhLx arr cnt Ar) (fun _ _ _ _ => cnt.toNat ≤ N.toNat))
      bhRest (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ BhQ N v)) := by
  unfold bhRest
  refine hoareG_decDI ha.hH (L' := fun m => ∃ I, BhLp arr cnt Ar I m) ?_ ?_
  · intro s hs ⟨h1, h2⟩ v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨BitVec.ofNat 64 0, ?_, ?_, lk_set_self _ _ _, by simp⟩
    · rw [lk_set_ne _ _ (by decide)]; exact h1
    · rw [lk_set_ne _ _ (by decide)]; exact h2
  refine hoareG_seqDI (bh_loop ha hfix hmc hbig) ?_
  refine hoareG_retDI ha.hH ?_
  intro s hs ⟨h1, h2⟩ Γ q he hh hE v hv
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  rw [evs_cons (ev_lw h2) (evs_cons (ev_bhCnt h1) evs_nil)] at hvs
  cases hvs
  refine ⟨fun i r w hr _ => by rw [hret] at hr; simp at hr, fun buf' cnt' hv' => ?_⟩
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv'
  obtain ⟨-, rfl⟩ := hv'
  exact hE

theorem bh_B {a : Act σ} (ha : ActOK a X) (hret : a.sg.ret = [])
    (hAS : AllocSpec σ X (nm "alloc") .heap) (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    (hfix : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig [])
    (hmc : CSumm σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy [])
    {arr cnt N : BitVec 64} (hcn : cnt.toNat ≤ N.toNat) (hN : N.toNat ≤ heapEnd) :
    HoareG σ X (DI a 0 0 (fun m => m.lookup (nm "lst") = some (.rStruct [.val (.word arr), .val (.word cnt)]))
      (fun _ _ _ _ => cnt.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd)) bhAlloc
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ BhQ N v)) := by
  have hse : heapEnd = 2952790016 := rfl
  have hSZ : (cnt * BitVec.ofNat 64 32).toNat = 32 * cnt.toNat := by
    rw [BitVec.toNat_mul]
    have : cnt.toNat * (BitVec.ofNat 64 32).toNat < 2 ^ 64 := by
      show cnt.toNat * 32 < 2 ^ 64
      omega
    rw [Nat.mod_eq_of_lt this]; show cnt.toNat * 32 = 32 * cnt.toNat; omega
  unfold bhAlloc
  refine hoareG_pre (P := PreH a (fun m => m.lookup (nm "lst") =
    some (.rStruct [.val (.word arr), .val (.word cnt)]) ∧ (cnt.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd))) ?_
    (fun s hs ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ => ⟨⟨hL, hE⟩, Γ, q, he, hh⟩)
  refine Node.hoareG_allocN ha hAS halloc (SZ := cnt * BitVec.ofNat 64 32)
    (L' := fun Ar m => (m.lookup (nm "lst") = some (.rStruct [.val (.word arr), .val (.word cnt)]) ∧
      m.lookup (nm "buf") = some (.val (.word Ar))) ∧ (cnt.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd))
    (fun s _ hL => ev_mul2 (ev_bhCnt hL.1) (ev_cw _ 32)) ?_ ?_
  · intro s st Ar hL
    refine ⟨⟨?_, lk_set_self _ _ _⟩, hL.2⟩
    rw [lk_set_ne _ _ (by decide)]; exact hL.1
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    rw [hSZ] at hs2
    refine hoareG_pre (P := DI a Ar (32 * cnt.toNat) (BhLx arr cnt Ar)
      (fun _ _ _ _ => cnt.toNat ≤ N.toNat)) (bh_rest ha hret hfix hmc hs2 hcn) ?_
    intro t _ ⟨hL, Γ, q, he, hh, hF, hn⟩
    rw [hSZ] at hF hn
    exact ⟨hL.1, Γ, q, he, hh, hF, hn, hL.2.1⟩

/-! ## The first call and the summary -/

theorem bh_A {a : Act σ} (ha : ActOK a X) (hret : a.sg.ret = [])
    (hAS : AllocSpec σ X (nm "alloc") .heap) (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    (hrls : CSumm σ X a.Cb a.H (nm "rlp_list_to_slices") rlsSig [])
    (hLoc : FreshFoot σ X (nm "rlp_list_to_slices") SlPre TlQ)
    (hfix : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig [])
    (hmc : CSumm σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy [])
    {P N : BitVec 64} :
    HoareG σ X (DI a 0 0 (LK [(nm "p", P), (nm "len", N)])
      (fun _ _ _ _ => heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)) dbhBody
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ BhQ N v)) := by
  have hse := heapEnd_lt64
  unfold dbhBody
  have hp0 := ha.hord0
  refine hoareG_decCallDI (E := fun _ _ _ _ => heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)
    (L := LK [(nm "p", P), (nm "len", N)])
    (L' := fun v m => ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] ∧
      m.lookup (nm "lst") = some v)
    (E' := fun v _ _ _ _ => ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] ∧
      y.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd)
    ha hrls hLoc (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig]) ?_ ?_ ?_ ?_
  · intro s hs hL vs hvs
    rw [evs_cons (ev_lw (hL (nm "p", P) (by simp))) (evs_cons (ev_lw (hL (nm "len", N) (by simp)))
      evs_nil)] at hvs
    cases hvs
    rfl
  · intro s st v hL hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    exact ⟨x, y, rfl, lk_set_self _ _ _⟩
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    rw [evs_cons (ev_lw (hL (nm "p", P) (by simp))) (evs_cons (ev_lw (hL (nm "len", N) (by simp)))
      evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh)
      ⟨P, N, rfl, hE.1, q, hpe, by omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨-, -, hrest⟩ := hQ x y rfl
    obtain ⟨-, hcn, -, -⟩ := hrest P N rfl
    obtain ⟨Γ'', q'', he'', hh'', hB''⟩ := co_keep he co hB
    have hq := (heap_ord hh).2.1
    exact ⟨Γ'', q'', he'', hh'', hB'', x, y, rfl, hcn, by omega⟩
  · intro v s hs hP hg
    obtain ⟨⟨x, y, hv, hL⟩, Γ, q, he, hh, hB, hn, x', y', hv', hcn, hN⟩ := hP
    rw [hv] at hv'
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl⟩ := hv'
    rw [hv] at hL
    exact bh_B ha hret hAS halloc hfix hmc hcn hN s hs ⟨hL, Γ, q, he, hh, hB, hn, hcn, hN⟩ hg

/-- The value fact in the form the summary exports. -/
def BhRx (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] → BhQ N v

theorem sumSpecA_decode_blob_hashes {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (htab : CTabSound σ X Types.guestC H ShardsJL.tab26) :
    SumSpecA σ X Types.guestC H (nm "decode_blob_hashes") bhSig (fun vs s _ => SlPre vs s)
      (fun _ _ _ _ => False) (fun vs _ _ r _ _ => ∀ v, r = .returned v → BhRx vs v) := by
  have hX := hF.hX
  have hrls : CSumm σ X Types.guestC H (nm "rlp_list_to_slices") rlsSig [] :=
    ctab% htab
  have hfix : CSumm σ X Types.guestC H (nm "tx_fixed_bytes") txfSig [] :=
    ctab% htab
  have hmc : CSumm σ X Types.guestC H (nm "memcpy") Helpers.sigMemcpy [] :=
    ctab% htab
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine sumSpecA_of_heapQ hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_blob_hashes
    (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, p, hp, hPL⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  rw [hh.2.1] at hp
  cases hp
  set a := actOf Types.guestC H bhSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0 with hadef
  have haC : a.Cb = Types.guestC := rfl
  have hret : a.sg.ret = [] := rfl
  rw [← haC] at hrls hfix hmc halloc
  have hH' : a.H = H := rfl
  rw [← hH'] at hrls hfix hmc halloc
  refine hoareG_conseq (P := DI a 0 0 (LK [(nm "p", Pv), (nm "len", Lv)])
    (fun _ _ _ _ => heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ a.p0.hp))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ BhQ Lv v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh, blkF_zero Γ0 p0, fun x hx => ?_, hP, hPL⟩
    · intro q hq
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      rcases hq with rfl | rfl <;> rw [hloc] <;> assumption
    · obtain ⟨-, h1, h2⟩ := hx
      simp at h2
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    refine ⟨Γ', p', he, hh', fun v hv' => ⟨(hv v hv').1, fun P N hvs => ?_⟩⟩
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨-, rfl⟩ := hvs
    exact (hv v hv').2
  exact bh_A ha hret hAS halloc hrls (freshFoot_rlp_list_to_slices_tile hX) hfix hmc

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_blob_hashes
