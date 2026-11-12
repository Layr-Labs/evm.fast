import InitECandidate.Solver.MemSafe.Rec.TxAccKit
import InitECandidate.Solver.MemSafe.Rec.TxAuth
import InitECandidate.Solver.MemSafe.Rec.TxItem
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_access_list`: the code

```
fun {1,1} decode_access_list(1 p, 1 len) {
  var {1,1} lst = rlp_list_to_slices(p, len);
  var 1 recs = alloc(lst.1 * 24);
  var i = 0;
  while i <+ lst.1 {
    var {1,1,1,1} it = rlp_item(SLICE_PTR(lst.0, i), SLICE_LEN(lst.0, i));
    if it.0 != 1 { throw TxErr 19; }
    var {1,1} ent = rlp_list_to_slices(it.1, it.2);
    if ent.1 != 2 { throw TxErr 19; }
    var 1 addr = tx_fixed_bytes(ent.0, 0, 20);
    var {1,1} sl = tx_list_item(ent.0, 1);
    var {1,1} slots = rlp_list_to_slices(sl.0, sl.1);
    var 1 keys = alloc(slots.1 * 32);
    var j = 0;
    while j <+ slots.1 { var 1 k = tx_fixed_bytes(slots.0, j, 32); memcpy(keys + j * 32, k, 32); j = j + 1; }
    var rec = recs + i * 24;
    st rec + 0, addr; st rec + 8, keys; st rec + 16, slots.1;
    i = i + 1;
  }
  return <recs, lst.1>;
}
```
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
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe.Types (tACC)

def acG (x : String) (f : Nat) (c : Nat) : ProgHOL 64 :=
  .ite (.cmp .notEqual (.rfield f (lv (nm x))) (cw c)) (.raise (nm "TxErr") (cw 19)) .skip

def acSt (k : Nat) (v : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm "rec"), cw k]) v

def acSl (f : String) : ExpHOL 64 := .rfield 1 (lv (nm f))

/-- the inner loop `while j <+ slots.1 { var k = tx_fixed_bytes(slots.0, j, 32); memcpy(..); j = j + 1 }` -/
def acInner : ProgHOL 64 :=
  .while (.cmp .lower (lv (nm "j")) (.rfield 1 (lv (nm "slots"))))
    (.decCall (nm "k") .one (nm "tx_fixed_bytes") [.rfield 0 (lv (nm "slots")), lv (nm "j"), cw 32]
      (.seq (callD (nm "memcpy")
        [.op .add [lv (nm "keys"), .panop .mul [lv (nm "j"), cw 32]], lv (nm "k"), cw 32])
        (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1]))))

def acFin : ProgHOL 64 :=
  .dec (nm "rec") .one (.op .add [lv (nm "recs"), .panop .mul [lv (nm "i"), cw 24]])
    (.seq (acSt 0 (lv (nm "addr"))) (.seq (acSt 8 (lv (nm "keys")))
      (.seq (acSt 16 (.rfield 1 (lv (nm "slots")))) (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))))

def acKeys : ProgHOL 64 :=
  .decCall (nm "keys") .one (nm "alloc") [.panop .mul [.rfield 1 (lv (nm "slots")), cw 32]]
    (.dec (nm "j") .one (cw 0) (.seq acInner acFin))

def acSlots : ProgHOL 64 :=
  .decCall (nm "slots") (.comb [.one, .one]) (nm "rlp_list_to_slices")
    [.rfield 0 (lv (nm "sl")), .rfield 1 (lv (nm "sl"))] acKeys

def acSl1 : ProgHOL 64 :=
  .decCall (nm "sl") (.comb [.one, .one]) (nm "tx_list_item") [.rfield 0 (lv (nm "ent")), cw 1] acSlots

def acAddr : ProgHOL 64 :=
  .decCall (nm "addr") .one (nm "tx_fixed_bytes") [.rfield 0 (lv (nm "ent")), cw 0, cw 20] acSl1

def acEnt : ProgHOL 64 :=
  .decCall (nm "ent") (.comb [.one, .one]) (nm "rlp_list_to_slices")
    [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))] (.seq (acG "ent" 1 2) acAddr)

def acLoop : ProgHOL 64 :=
  .decCall (nm "it") auSh4 (nm "rlp_item")
    [.load .one (.op .add [.rfield 0 (lv (nm "lst")), .panop .mul [lv (nm "i"), cw 16]]),
     .load .one (.op .add [.rfield 0 (lv (nm "lst")), .panop .mul [lv (nm "i"), cw 16], cw 8])]
    (.seq (acG "it" 0 1) acEnt)

def acWhile : ProgHOL 64 := .while (.cmp .lower (lv (nm "i")) bhCnt) acLoop

def acRet : ProgHOL 64 := .return (.rstruct [lv (nm "recs"), bhCnt])

def acRest : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq acWhile acRet)

def acAlloc : ProgHOL 64 :=
  .decCall (nm "recs") .one (nm "alloc") [.panop .mul [bhCnt, cw 24]] acRest

def acBody : ProgHOL 64 :=
  .decCall (nm "lst") (.comb [.one, .one]) (nm "rlp_list_to_slices") [lv (nm "p"), lv (nm "len")] acAlloc

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_access_list : fnEntry Guest.Software.guestFn_decode_access_list =
    (nm "decode_access_list", [(nm "p", .one), (nm "len", .one)], acBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv


theorem code_decode_access_list : guestCode (nm "decode_access_list") =
    some ([(nm "p", .one), (nm "len", .one)], acBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 303) (by decide)) ⟨_, rfl⟩
    entry_decode_access_list

/-! ## Arithmetic helpers -/

theorem mulN (x : BitVec 64) (c : Nat) (hc : c < 2 ^ 64) :
    x * BitVec.ofNat 64 c = BitVec.ofNat 64 (c * x.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc, Nat.mul_comm]

theorem addN (A : BitVec 64) (a b : Nat) :
    A + BitVec.ofNat 64 a + BitVec.ofNat 64 b = A + BitVec.ofNat 64 (a + b) := by
  rw [BitVec.add_assoc, BitVec.ofNat_add_ofNat]

theorem tnl (A : BitVec 64) (k : Nat) (h : A.toNat + k < 2 ^ 64) :
    (A + BitVec.ofNat 64 k).toNat = A.toNat + k := by
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

theorem ofN_inj (A : BitVec 64) {a b : Nat} (ha : a < 2 ^ 64) (hb : b < 2 ^ 64)
    (h : A + BitVec.ofNat 64 a = A + BitVec.ofNat 64 b) : a = b := by
  have h2 := congrArg BitVec.toNat h
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat] at h2
  have := A.isLt
  omega

/-! ## The persistent core of the outer loop -/

variable {σ : Type} {X : Ctx 64}

/-- `[x, x + n)` lies in `[P, P + N)`. -/
def LocIn (P N x : BitVec 64) (n : Nat) : Prop := P.toNat ≤ x.toNat ∧ x.toNat + n ≤ P.toNat + N.toNat

structure EOc (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) (Γ : Gam) (q : Ptrs) (mem : Mem) :
    Prop where
  fz : FzB L0.toNat (16 * C.toNat) Γ q
  sin : SIn mem L0 C.toNat P.toNat (P.toNat + N.toNat)
  dj : ∀ x : BitVec 64, Overlap Ar.toNat (24 * C.toNat) x →
    ¬ (L0.toNat ≤ x.toNat ∧ x.toNat < L0.toNat + 16 * C.toNat)
  good : ∀ j, j < I → (rd mem (Ar + BitVec.ofNat 64 (24 * j + 16))).toNat < 2 ^ 28
  loc : ∀ j, j < I → LocIn P N (rd mem (Ar + BitVec.ofNat 64 (24 * j))) 20
  hP : heapBase ≤ P.toNat
  hN : P.toNat + N.toNat ≤ a.p0.hp
  hC : C.toNat ≤ N.toNat
  hL0 : L0.toNat + 16 * C.toNat ≤ heapEnd
  hAr : heapBase ≤ Ar.toNat ∧ Ar.toNat + 24 * C.toNat ≤ heapEnd ∧ Ar.toNat % 8 = 0
  hI : I ≤ C.toNat

theorem rd_congr {m m' : Mem} {x : BitVec 64} (h : m' x = m x) : rd m' x = rd m x := by
  unfold rd; rw [h]

theorem eo_call {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {P N L0 C Ar : BitVec 64} {I : Nat}
    (co : COutA a sg' vs Γ Γ' q q' s st) (hB : BlkF Ar (24 * C.toNat) Γ q)
    (hArg : ∀ x, ArgCells sg'.params vs x →
      ¬ (L0.toNat ≤ x.toNat ∧ x.toNat < L0.toNat + 16 * C.toNat) ∧
        ¬ Overlap Ar.toNat (24 * C.toNat) x)
    (h : EOc a P N L0 C Ar I Γ q s.memory) : EOc a P N L0 C Ar I Γ' q' st.memory := by
  have hse := heapEnd_lt64
  have key : ∀ y : BitVec 64, L0.toNat ≤ y.toNat → y.toNat < L0.toNat + 16 * C.toNat →
      rd st.memory y = rd s.memory y := fun y h1 h2 =>
    rd_congr (co.frame y (notW_of_fz co.heap0 h.fz h1 h2) (fun hx => (hArg y hx).1 ⟨h1, h2⟩)
      (h.fz y h1 h2).2)
  refine ⟨fzB_after (heap_ord co.heap0) (heap_ord co.heap) co.mono co.nf h.fz, ?_, h.dj, ?_, ?_,
    h.hP, h.hN, h.hC, h.hL0, h.hAr, h.hI⟩
  · intro j hj
    have hs := h.sin j hj
    have e1 : (L0 + BitVec.ofNat 64 (16 * j)).toNat = L0.toNat + 16 * j :=
      tnl _ _ (by have := h.hL0; omega)
    have e2 : (L0 + BitVec.ofNat 64 (16 * j + 8)).toNat = L0.toNat + (16 * j + 8) :=
      tnl _ _ (by have := h.hL0; omega)
    rw [key _ (by omega) (by omega), key _ (by omega) (by omega)]
    exact hs
  · intro j hj
    have hjC : j < C.toNat := by have := h.hI; omega
    have e : (Ar + BitVec.ofNat 64 (24 * j + 16)).toNat = Ar.toNat + (24 * j + 16) :=
      tnl _ _ (by have := h.hAr; omega)
    have hov : Overlap Ar.toNat (24 * C.toNat) (Ar + BitVec.ofNat 64 (24 * j + 16)) := by
      refine ⟨by rw [e]; have := h.hAr; omega, by rw [e]; omega, by rw [e]; omega⟩
    obtain ⟨h1, h2⟩ := hB _ hov
    have hw : ¬ WCell a.Cb Γ (Ar + BitVec.ofNat 64 (24 * j + 16)) := fun hw => h1 (wcell_inObj co.heap0 hw)
    have := rd_congr (co.frame _ hw (fun hx => (hArg _ hx).2 hov) h2)
    rw [this]
    exact h.good j hj
  · intro j hj
    have hjC : j < C.toNat := by have := h.hI; omega
    have e : (Ar + BitVec.ofNat 64 (24 * j)).toNat = Ar.toNat + 24 * j :=
      tnl _ _ (by have := h.hAr; omega)
    have hov : Overlap Ar.toNat (24 * C.toNat) (Ar + BitVec.ofNat 64 (24 * j)) := by
      refine ⟨by rw [e]; have := h.hAr; omega, by rw [e]; omega, by rw [e]; omega⟩
    obtain ⟨h1, h2⟩ := hB _ hov
    have hw : ¬ WCell a.Cb Γ (Ar + BitVec.ofNat 64 (24 * j)) := fun hw => h1 (wcell_inObj co.heap0 hw)
    have := rd_congr (co.frame _ hw (fun hx => (hArg _ hx).2 hov) h2)
    rw [this]
    exact h.loc j hj

theorem eo_store_core {a : Act σ} {P N L0 C Ar : BitVec 64} {I k : Nat} {Γ : Gam} {q : Ptrs}
    {mem0 mem : Mem} {w : BitVec 64} (hw : w = Ar + BitVec.ofNat 64 (24 * I + k)) (hk8 : k % 8 = 0)
    (hk : k ≤ 16) (hIC : I < C.toNat) (hmem : ∀ y, y ≠ w → mem y = mem0 y)
    (h : EOc a P N L0 C Ar I Γ q mem0) :
    SIn mem L0 C.toNat P.toNat (P.toNat + N.toNat) ∧
      (∀ j, j < I → (rd mem (Ar + BitVec.ofNat 64 (24 * j + 16))).toNat < 2 ^ 28) ∧
      (∀ j, j < I → LocIn P N (rd mem (Ar + BitVec.ofNat 64 (24 * j))) 20) := by
  have hse := heapEnd_lt64
  have hwn : w.toNat = Ar.toNat + (24 * I + k) := by
    rw [hw]; exact tnl _ _ (by have := h.hAr; omega)
  have hov : Overlap Ar.toNat (24 * C.toNat) w :=
    ⟨by rw [hwn]; have := h.hAr; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩
  have hdj := h.dj w hov
  refine ⟨?_, ?_, ?_⟩
  · intro j hj
    have hs := h.sin j hj
    have e1 : (L0 + BitVec.ofNat 64 (16 * j)).toNat = L0.toNat + 16 * j :=
      tnl _ _ (by have := h.hL0; omega)
    have e2 : (L0 + BitVec.ofNat 64 (16 * j + 8)).toNat = L0.toNat + (16 * j + 8) :=
      tnl _ _ (by have := h.hL0; omega)
    have n1 : L0 + BitVec.ofNat 64 (16 * j) ≠ w := fun e => hdj ⟨by rw [← e, e1]; omega, by rw [← e, e1]; omega⟩
    have n2 : L0 + BitVec.ofNat 64 (16 * j + 8) ≠ w := fun e => hdj ⟨by rw [← e, e2]; omega, by rw [← e, e2]; omega⟩
    rw [rd_congr (hmem _ n1), rd_congr (hmem _ n2)]
    exact hs
  · intro j hj
    have hjC : j < C.toNat := by have := h.hI; omega
    have ne : Ar + BitVec.ofNat 64 (24 * j + 16) ≠ w := by
      intro e
      rw [hw] at e
      have := ofN_inj Ar (by have := h.hAr; omega) (by have := h.hAr; omega) e
      omega
    rw [rd_congr (hmem _ ne)]
    exact h.good j hj
  · intro j hj
    have hjC : j < C.toNat := by have := h.hI; omega
    have ne : Ar + BitVec.ofNat 64 (24 * j) ≠ w := by
      intro e
      rw [hw] at e
      have := ofN_inj Ar (by have := h.hAr; omega) (by have := h.hAr; omega) e
      omega
    rw [rd_congr (hmem _ ne)]
    exact h.loc j hj


def EE (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem _ => EOc a P N L0 C Ar I Γ q mem

def kvA (L0 C Ar : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  [(nm "lst", .rStruct [Wd L0, Wd C]), (nm "recs", Wd Ar), (nm "i", Wd (BitVec.ofNat 64 I))]

/-! ## The record stores -/

theorem ac_st {a : Act σ} (ha : ActOK a X) {P N L0 C Ar x : BitVec 64} {I I' k : Nat}
    {L : LocalsH → Prop} {ev' : ExpHOL 64} (hIC : I < C.toNat)
    (hbig : Ar.toNat + 24 * C.toNat ≤ heapEnd) (hk8 : k % 8 = 0) (hk : k ≤ 16)
    (hI' : (k = 16 ∧ I' = I + 1 ∧ x.toNat < 2 ^ 28) ∨ (k ≠ 16 ∧ I' = I))
    {Rpre Rpost : Mem → Prop}
    (hR : ∀ mem0 mem : Mem, Rpre mem0 →
      (∀ y, y ≠ Ar + BitVec.ofNat 64 (24 * I + k) → mem y = mem0 y) →
      rd mem (Ar + BitVec.ofNat 64 (24 * I + k)) = x → Rpost mem)
    (hloc : k = 16 → ∀ mem : Mem, Rpost mem → LocIn P N (rd mem (Ar + BitVec.ofNat 64 (24 * I))) 20)
    (hrec : ∀ m, L m → m.lookup (nm "rec") = some (Wd (Ar + BitVec.ofNat 64 (24 * I))))
    (hev : ∀ s : State σ, L s.locals → ev s ev' = some (Wd x)) :
    HoareG σ X (DI a Ar (24 * C.toNat) L (fun Γ q mem g => EE a P N L0 C Ar I Γ q mem g ∧ Rpre mem))
      (acSt k ev')
      (DQ a Ar (24 * C.toNat) L (fun Γ q mem g => EE a P N L0 C Ar I' Γ q mem g ∧ Rpost mem)) := by
  have hse := heapEnd_lt64
  have hevw : ∀ s : State σ, L s.locals →
      ev s (.op .add [lv (nm "rec"), cw k]) =
        some (Wd (Ar + BitVec.ofNat 64 (24 * I + k))) := fun s hL => by
    rw [ev_add2 (ev_lw (hrec _ hL)) (ev_cw _ k), addN]; rfl
  unfold acSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s hs hL w hw
    rw [hevw s hL] at hw
    cases hw
    refine ⟨3 * I + k / 8, by omega, ?_⟩
    congr 2
    omega
  · intro s hs hL v hv
    rw [hev s hL] at hv
    cases hv
    exact ⟨x, rfl⟩
  · intro s Γ q j x' mem hs hL hj hw hv hrd hmem hB ⟨hEs, hRp⟩
    rw [hevw s hL] at hw
    simp only [Wd, ValueHOL.val.injEq, HolWordLab.word.injEq, Option.some.injEq] at hw
    rw [hev s hL] at hv
    simp only [Wd, ValueHOL.val.injEq, HolWordLab.word.injEq, Option.some.injEq] at hv
    subst hv
    have core := eo_store_core (a := a) (P := P) (N := N) (L0 := L0) (Ar := Ar) (w := Ar + BitVec.ofNat 64 (8 * j))
      hw.symm hk8 hk hIC hmem hEs
    rw [hw.symm] at hrd
    have hRq : Rpost mem := hR s.memory mem hRp (fun y hy => hmem y (by rw [← hw]; exact hy)) hrd
    rcases hI' with ⟨rfl, rfl, hx⟩ | ⟨-, rfl⟩
    · refine ⟨⟨hEs.fz, core.1, hEs.dj, fun j' hj' => ?_, fun j' hj' => ?_, hEs.hP, hEs.hN, hEs.hC, hEs.hL0,
        hEs.hAr, by omega⟩, hRq⟩
      · rcases Nat.lt_succ_iff_lt_or_eq.mp hj' with h | h
        · exact core.2.1 j' h
        · subst h
          rw [hrd]; exact hx
      · rcases Nat.lt_succ_iff_lt_or_eq.mp hj' with h | h
        · exact core.2.2 j' h
        · subst h
          exact hloc rfl mem hRq
    · exact ⟨⟨hEs.fz, core.1, hEs.dj, core.2.1, core.2.2, hEs.hP, hEs.hN, hEs.hC, hEs.hL0, hEs.hAr, hEs.hI⟩, hRq⟩


def kvS (L0 C Ar arr cnt K w1 : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  (nm "slots", .rStruct [Wd arr, Wd cnt]) :: (nm "keys", Wd K) :: (nm "addr", Wd w1) ::
    kvA L0 C Ar I

theorem lv_get {kv : List (MlS × ValueHOL 64)} {m : LocalsH} (h : LV kv m) {x : MlS}
    {v : ValueHOL 64} (hm : (x, v) ∈ kv) : m.lookup x = some v := h _ hm

theorem ofNat_toNat_lt (I : Nat) (h : I < 2 ^ 64) : (BitVec.ofNat 64 I).toNat = I := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt h

theorem rec_val (Ar : BitVec 64) (I : Nat) (h : I < 2 ^ 64) :
    Ar + BitVec.ofNat 64 I * BitVec.ofNat 64 24 = Ar + BitVec.ofNat 64 (24 * I) := by
  rw [mulN _ _ (by norm_num), ofNat_toNat_lt I h]

theorem ev_cnt {s : State σ} {x : String} {arr cnt : BitVec 64}
    (h : s.locals.lookup (nm x) = some (.rStruct [Wd arr, Wd cnt])) :
    ev s (.rfield 1 (lv (nm x))) = some (Wd cnt) :=
  Spec.Mpt.Dec.ev_rfield_w h rfl

theorem ac_fin {a : Act σ} (ha : ActOK a X) {P N L0 C Ar arr cnt K w1 : BitVec 64} {I : Nat}
    (hIC : I < C.toNat) (hbig : Ar.toNat + 24 * C.toNat ≤ heapEnd) (hcn : cnt.toNat < 2 ^ 28)
    (hw1 : LocIn P N w1 20) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvS L0 C Ar arr cnt K w1 I)) (EE a P N L0 C Ar I))
      acFin (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  have hI64 : I < 2 ^ 64 := by omega
  let RA : Mem → Prop := fun mem => rd mem (Ar + BitVec.ofNat 64 (24 * I)) = w1
  have e0 : Ar + BitVec.ofNat 64 (24 * I + 0) = Ar + BitVec.ofNat 64 (24 * I) := by simp
  have n8 : Ar + BitVec.ofNat 64 (24 * I) ≠ Ar + BitVec.ofNat 64 (24 * I + 8) := fun e => by
    have := ofN_inj Ar (a := 24 * I) (b := 24 * I + 8) (by omega) (by omega) e
    omega
  have n16 : Ar + BitVec.ofNat 64 (24 * I) ≠ Ar + BitVec.ofNat 64 (24 * I + 16) := fun e => by
    have := ofN_inj Ar (a := 24 * I) (b := 24 * I + 16) (by omega) (by omega) e
    omega
  unfold acFin
  refine hoareG_decDQE ha.hH
    (L' := LV ((nm "rec", Wd (Ar + BitVec.ofNat 64 (24 * I))) :: kvS L0 C Ar arr cnt K w1 I))
    (L2 := LV (kvA L0 C Ar (I + 1))) ?_ ?_ ?_
  · intro s hs hL v hv
    rw [ev_add2 (ev_lw (hL (nm "recs", Wd Ar) (by simp [kvS, kvA])))
      (ev_mul2 (ev_lw (hL (nm "i", Wd (BitVec.ofNat 64 I)) (by simp [kvS, kvA]))) (ev_cw _ 24)),
      rec_val _ _ hI64] at hv
    cases hv
    intro q hq
    rcases List.mem_cons.mp hq with rfl | hq
    · exact lk_set_self _ _ _
    · exact lv_set hL (by simp only [kvS, kvA]; nmne) _ q hq
  · have hrec : ∀ m, LV ((nm "rec", Wd (Ar + BitVec.ofNat 64 (24 * I))) :: kvS L0 C Ar arr cnt K w1 I) m →
        m.lookup (nm "rec") = some (Wd (Ar + BitVec.ofNat 64 (24 * I))) :=
      fun m hm => lv_get hm (List.Mem.head _)
    have hget : ∀ (m : LocalsH) (q : MlS × ValueHOL 64),
        LV ((nm "rec", Wd (Ar + BitVec.ofNat 64 (24 * I))) :: kvS L0 C Ar arr cnt K w1 I) m →
        q ∈ kvS L0 C Ar arr cnt K w1 I → m.lookup q.1 = some q.2 :=
      fun m q hm hq => hm q (List.mem_cons_of_mem _ hq)
    refine hoareG_conseq (P := DI a Ar (24 * C.toNat)
        (LV ((nm "rec", Wd (Ar + BitVec.ofNat 64 (24 * I))) :: kvS L0 C Ar arr cnt K w1 I))
        (fun Γ q mem g => EE a P N L0 C Ar I Γ q mem g ∧ True))
      (Q := DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1)))
        (fun Γ q mem g => EE a P N L0 C Ar (I + 1) Γ q mem g ∧ RA mem)) ?_
      (fun s _ hD => di_mono (fun _ h => h) (fun _ _ _ _ h => ⟨h, trivial⟩) hD)
      (fun r t _ _ h => ⟨fun hn => di_mono (fun _ h => h) (fun _ _ _ _ h => h.1) (h.1 hn), h.2⟩)
    refine hoareG_seqDQ (ac_st ha hIC hbig (k := 0) (I' := I) (x := w1) (Rpre := fun _ => True) (Rpost := RA)
      (by norm_num) (by norm_num) (Or.inr ⟨by norm_num, rfl⟩)
      (fun mem0 mem _ _ hrd => by show rd mem _ = w1; rw [← e0]; exact hrd) (fun h => absurd h (by norm_num))
      hrec (fun s hL => ev_lw (hget _ (nm "addr", Wd w1) hL (by simp [kvS])))) ?_
    refine hoareG_seqDQ (ac_st ha hIC hbig (k := 8) (I' := I) (x := K) (Rpre := RA) (Rpost := RA)
      (by norm_num) (by norm_num) (Or.inr ⟨by norm_num, rfl⟩)
      (fun mem0 mem h hm _ => by show rd mem _ = w1; rw [rd_congr (hm _ n8)]; exact h)
      (fun h => absurd h (by norm_num))
      hrec (fun s hL => ev_lw (hget _ (nm "keys", Wd K) hL (by simp [kvS])))) ?_
    refine hoareG_seqDQ (ac_st ha hIC hbig (k := 16) (I' := I + 1) (x := cnt) (Rpre := RA) (Rpost := RA)
      (by norm_num) (by norm_num) (Or.inl ⟨rfl, rfl, hcn⟩)
      (fun mem0 mem h hm _ => by show rd mem _ = w1; rw [rd_congr (hm _ n16)]; exact h)
      (fun _ mem h => by rw [show rd mem (Ar + BitVec.ofNat 64 (24 * I)) = w1 from h]; exact hw1)
      hrec (fun s hL => ev_cnt (hget _ (nm "slots", .rStruct [Wd arr, Wd cnt]) hL
        (by simp [kvS])))) ?_
    refine hoareG_assignDI ha.hH ?_
    intro s hs hL v hv
    have hi := lv_get hL (x := nm "i") (v := Wd (BitVec.ofNat 64 I)) (by simp [kvS, kvA])
    rw [ev_add2 (ev_lw hi) (ev_cw _ 1)] at hv
    cases hv
    intro q hq
    simp only [kvA, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl
    · rw [lk_set_ne _ _ (show nm "i" ≠ nm "lst" by decide)]
      exact lv_get hL (x := nm "lst") (v := .rStruct [Wd L0, Wd C]) (by simp [kvS, kvA])
    · rw [lk_set_ne _ _ (show nm "i" ≠ nm "recs" by decide)]
      exact lv_get hL (x := nm "recs") (v := Wd Ar) (by simp [kvS, kvA])
    · rw [lk_set_self]
      show some (ValueHOL.val (HolWordLab.word _)) = some (ValueHOL.val (HolWordLab.word _))
      rw [BitVec.ofNat_add_ofNat]
  · intro m0 m hl h
    exact lv_res h (by simp only [kvA]; nmne) _


/-! ## The callees -/

structure AcCS {σ : Type} (X : Ctx 64) (a : Act σ) : Prop where
  hC : X.code.lookup = guestCode
  rls : CSumm σ X a.Cb a.H (nm "rlp_list_to_slices") rlsSig []
  item : CSumm σ X a.Cb a.H (nm "rlp_item") rlsSig []
  fixed : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig []
  litem : CSumm σ X a.Cb a.H (nm "tx_list_item") rlsSig []
  alloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig []
  hAS : AllocSpec σ X (nm "alloc") .heap
  mc : CSumm σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy []

/-! ## The inner loop (one entry's storage keys) -/

def kvR (L0 C Ar arr cnt K w1 : BitVec 64) (I J : Nat) : List (MlS × ValueHOL 64) :=
  (nm "j", Wd (BitVec.ofNat 64 J)) :: kvS L0 C Ar arr cnt K w1 I

structure EKc (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) (K cnt : BitVec 64) (Γ : Gam)
    (q : Ptrs) (mem : Mem) : Prop where
  eo : EOc a P N L0 C Ar I Γ q mem
  blk : BlkF K (32 * cnt.toNat) Γ q
  f0 : ∀ z : BitVec 64, Overlap K.toNat (32 * cnt.toNat) z → ¬ a.p0.Allocated z.toNat
  djL : ∀ z : BitVec 64, Overlap K.toNat (32 * cnt.toNat) z →
    ¬ (L0.toNat ≤ z.toNat ∧ z.toNat < L0.toNat + 16 * C.toNat)
  djR : ∀ z : BitVec 64, Overlap K.toNat (32 * cnt.toNat) z → ¬ Overlap Ar.toNat (24 * C.toNat) z
  hc : cnt.toNat ≤ N.toNat
  hK : K.toNat + 32 * cnt.toNat ≤ heapEnd

def EK (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) (K cnt : BitVec 64) :
    Gam → Ptrs → Mem → LocalsH → Prop := fun Γ q mem _ => EKc a P N L0 C Ar I K cnt Γ q mem

theorem ek_call {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {P N L0 C Ar K cnt : BitVec 64} {I : Nat}
    (co : COutA a sg' vs Γ Γ' q q' s st) (hB : BlkF Ar (24 * C.toNat) Γ q)
    (hArg : ∀ x, ArgCells sg'.params vs x → Overlap K.toNat (32 * cnt.toNat) x)
    (h : EKc a P N L0 C Ar I K cnt Γ q s.memory) : EKc a P N L0 C Ar I K cnt Γ' q' st.memory :=
  ⟨eo_call co hB (fun x hx => ⟨h.djL x (hArg x hx), h.djR x (hArg x hx)⟩) h.eo,
   blkF_after (heap_ord co.heap0) (heap_ord co.heap) co.mono co.nf h.blk, h.f0, h.djL, h.djR, h.hc, h.hK⟩


theorem kvS_ne_j (L0 C Ar arr cnt K w1 : BitVec 64) (I : Nat) :
    ∀ q ∈ kvS L0 C Ar arr cnt K w1 I, q.1 ≠ nm "j" := by
  simp only [kvS, kvA]; nmne

theorem ac_mc_args {s : State σ} {J : Nat} {K w : BitVec 64}
    (hkeys : s.locals.lookup (nm "keys") = some (Wd K))
    (hj : s.locals.lookup (nm "j") = some (Wd (BitVec.ofNat 64 J)))
    (hk : s.locals.lookup (nm "k") = some (Wd w)) {vs : List (ValueHOL 64)}
    (hvs : evs s [.op .add [lv (nm "keys"), .panop .mul [lv (nm "j"), cw 32]], lv (nm "k"), cw 32] =
      some vs) :
    vs = [Wd (K + BitVec.ofNat 64 J * BitVec.ofNat 64 32), Wd w, Wd (BitVec.ofNat 64 32)] := by
  rw [evs_cons (ev_add2 (ev_lw hkeys) (ev_mul2 (ev_lw hj) (ev_cw _ 32)))
    (evs_cons (ev_lw hk) (evs_cons (ev_cw _ 32) evs_nil))] at hvs
  cases hvs
  rfl

theorem ac_mc_ok (K : BitVec 64) {J cnt : Nat} (hJ : J < cnt) (hbig : K.toNat + 32 * cnt ≤ heapEnd) :
    (K + BitVec.ofNat 64 J * BitVec.ofNat 64 32).toNat = K.toNat + 32 * J := by
  have hse := heapEnd_lt64
  rw [mulN _ _ (by norm_num), ofNat_toNat_lt J (by omega)]
  exact tnl _ _ (by omega)

theorem ac_mc_ov {K : BitVec 64} {J cnt : Nat} (hJ : J < cnt) (hbig : K.toNat + 32 * cnt ≤ heapEnd)
    {x : BitVec 64} (h : Overlap (K + BitVec.ofNat 64 J * BitVec.ofNat 64 32).toNat
      (1 * (BitVec.ofNat 64 32).toNat + 0) x) : Overlap K.toNat (32 * cnt) x := by
  rw [ac_mc_ok K hJ hbig] at h
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  rw [h32] at h
  obtain ⟨o1, o2, o3⟩ := h
  exact ⟨o1, by omega, by omega⟩

theorem ac_inner {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar arr cnt K w1 : BitVec 64} {I : Nat} (hbig : K.toNat + 32 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (24 * C.toNat)
      (fun m => ∃ J, J ≤ cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m)
      (EK a P N L0 C Ar I K cnt)) acInner
      (DQ a Ar (24 * C.toNat) (LV (kvS L0 C Ar arr cnt K w1 I)) (EK a P N L0 C Ar I K cnt)) := by
  have hse := heapEnd_lt64
  have hne : ∀ q ∈ kvR L0 C Ar arr cnt K w1 I 0, q.1 ≠ nm "k" := by
    simp only [kvR, kvS, kvA]; nmne
  have hn32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  unfold acInner
  refine hoareG_whileDI ha.hH (Lx := LV (kvS L0 C Ar arr cnt K w1 I)) ?_ ?_
  swap
  · intro s hs hD hc
    exact di_mono (fun m ⟨J, _, hl⟩ => lv_sub hl (fun q hq => List.mem_cons_of_mem _ hq))
      (fun _ _ _ _ h => h) hD
  refine hoareG_pre (P := DI a Ar (24 * C.toNat)
    (fun m => ∃ J, J < cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m) (EK a P N L0 C Ar I K cnt)) ?_ ?_
  swap
  · intro s hs ⟨hD, hc⟩
    obtain ⟨⟨J, hJ, hl⟩, rest⟩ := hD
    have hj := lv_get hl (x := nm "j") (v := Wd (BitVec.ofNat 64 J)) (by simp [kvR])
    have hsl := lv_get hl (x := nm "slots") (v := .rStruct [Wd arr, Wd cnt]) (by simp [kvR, kvS])
    have hlt := lower_true (cmp_true (ev_lw hj) (ev_cnt hsl) hc)
    rw [ofNat_toNat_lt J (by omega)] at hlt
    exact ⟨⟨J, hlt, hl⟩, rest⟩
  refine hoareG_decCallDQ ha hcs.fixed (funSpec_true _) (by simp [txfSig]) (by simp [txfSig])
    (L := fun m => ∃ J, J < cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m)
    (E := EK a P N L0 C Ar I K cnt)
    (L' := fun v m => ∃ J, (J < cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m) ∧
      ∃ w : BitVec 64, v = Wd w ∧ m.lookup (nm "k") = some v)
    (E' := fun _ => EK a P N L0 C Ar I K cnt)
    (L2 := fun _ m => ∃ J, J ≤ cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m)
    (E2 := fun _ => EK a P N L0 C Ar I K cnt)
    (Lf := fun m => ∃ J, J ≤ cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m)
    (Ef := EK a P N L0 C Ar I K cnt) ?_ ?_ ?_ ?_ ?_ (fun _ _ _ _ _ h => h)
  · intro s hs ⟨J, hlt, hl⟩ Γ q he hh hB hn hE vs hvs
    have hsl := lv_get hl (x := nm "slots") (v := .rStruct [Wd arr, Wd cnt]) (by simp [kvR, kvS])
    have hj := lv_get hl (x := nm "j") (v := Wd (BitVec.ofNat 64 J)) (by simp [kvR])
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hsl rfl) (evs_cons (ev_lw hj)
      (evs_cons (ev_cw _ 32) evs_nil))] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [txfSig]) rfl, fun x hx => absurd hx (argCells_any (by simp [txfSig]))⟩
  · intro s st v ⟨J, hlt, hl⟩ hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨J, ⟨hlt, lv_set (s := { st with locals := s.locals }) hl
      (by simp only [kvR, kvS, kvA]; nmne) _⟩, w, rfl, lk_set_self _ _ _⟩
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    exact ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB,
      ek_call co hB (fun x hx => absurd hx (argCells_any (by simp [txfSig]))) hE⟩
  · intro v
    refine hoareG_seqDQ (E := EK a P N L0 C Ar I K cnt)
      (hoareG_callDIA ha hcs.mc (funSpec_true _) (by simp [Helpers.sigMemcpy])
        (by simp [Helpers.sigMemcpy]) (E := EK a P N L0 C Ar I K cnt)
        (E' := EK a P N L0 C Ar I K cnt) ?_ ?_) ?_
    · intro s hs ⟨J, ⟨hlt, hl⟩, w, hv, hkk⟩ Γ q he hh hB hn hE vs hvs
      rw [hv] at hkk
      rw [ac_mc_args (lv_get hl (x := nm "keys") (v := Wd K) (by simp [kvR, kvS]))
        (lv_get hl (x := nm "j") (v := Wd (BitVec.ofNat 64 J)) (by simp [kvR])) hkk hvs]
      have hD := ac_mc_ok K hlt hbig
      refine ⟨?_, ?_⟩
      · exact Mod.argsOK_mc (bufOK_blk hE.blk (by rw [hD]; omega) (by rw [hD, hn32]; have := hE.hK; omega))
      · intro x hx
        obtain ⟨o1, o2, o3⟩ := Mod.argCells_mc hx
        rw [hD] at o2 o3
        rw [hn32] at o3
        exact Or.inr (Or.inr (Or.inl (hE.f0 x ⟨o1, by omega, by omega⟩)))
    · intro s st vs callee v' Γ Γ' q q' _ ⟨J, ⟨hlt, hl⟩, w, hv, hkk⟩ hvs _ co hB hE
      rw [hv] at hkk
      rw [ac_mc_args (lv_get hl (x := nm "keys") (v := Wd K) (by simp [kvR, kvS]))
        (lv_get hl (x := nm "j") (v := Wd (BitVec.ofNat 64 J)) (by simp [kvR])) hkk hvs] at co
      exact ek_call co hB (fun x hx => ac_mc_ov hlt hbig (Mod.argCells_mc hx)) hE
    · refine hoareG_assignDI ha.hH ?_
      intro s hs ⟨J, ⟨hlt, hl⟩, w, hv, hkk⟩ v' hv'
      have hj := lv_get hl (x := nm "j") (v := Wd (BitVec.ofNat 64 J)) (by simp [kvR])
      rw [ev_add2 (ev_lw hj) (ev_cw _ 1)] at hv'
      cases hv'
      refine ⟨J + 1, by omega, ?_⟩
      intro q hq
      rcases List.mem_cons.mp hq with rfl | hq
      · rw [lk_set_self]
        show some (ValueHOL.val (HolWordLab.word _)) = some (ValueHOL.val (HolWordLab.word _))
        rw [BitVec.ofNat_add_ofNat]
      · rw [lk_set_ne _ _ (Ne.symm (kvS_ne_j L0 C Ar arr cnt K w1 I _ hq))]
        exact lv_get hl (List.mem_cons_of_mem _ hq)
  · intro m0 m v _ ⟨J, hJ, hl⟩
    exact ⟨J, hJ, lv_res hl (by simp only [kvR, kvS, kvA]; nmne) _⟩


theorem lv_cons {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LV kv s.locals) {x : MlS}
    (hn : ∀ q ∈ kv, q.1 ≠ x) (v : ValueHOL 64) :
    LV ((x, v) :: kv) (setVarHOLFinite x v s).locals := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact lk_set_self _ _ _
  · exact lv_set h hn v q hq

theorem n28 {a : Act σ} {X : Ctx 64} (ha : ActOK a X) {P N L0 C Ar : BitVec 64} {I : Nat} {Γ : Gam}
    {q : Ptrs} {mem : Mem} (h : EOc a P N L0 C Ar I Γ q mem) : N.toNat < 2 ^ 28 := by
  have h1 := ha.hord0.2.1
  have h2 := h.hP
  have h3 := h.hN
  unfold heapBase heapEnd at *
  omega

theorem ac_jdec {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar arr cnt K w1 : BitVec 64} {I : Nat} (hIC : I < C.toNat) (hw1 : LocIn P N w1 20) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvS L0 C Ar arr cnt K w1 I)) (EK a P N L0 C Ar I K cnt))
      (.dec (nm "j") .one (cw 0) (.seq acInner acFin))
      (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  refine hoareG_decDQE ha.hH
    (L' := fun m => ∃ J, J ≤ cnt.toNat ∧ LV (kvR L0 C Ar arr cnt K w1 I J) m)
    (L2 := LV (kvA L0 C Ar (I + 1))) ?_ ?_ ?_
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨0, by omega, lv_cons hL (kvS_ne_j L0 C Ar arr cnt K w1 I) _⟩
  · refine hoareG_seqDQ (L := LV (kvS L0 C Ar arr cnt K w1 I)) (E := EK a P N L0 C Ar I K cnt) ?_ ?_
    · intro s hs hD hg
      obtain ⟨-, Γ, q, -, -, -, -, hE⟩ := id hD
      exact ac_inner ha hcs (hE.hK) s hs hD hg
    · intro s hs hD hg
      obtain ⟨-, Γ, q, -, -, -, -, hE⟩ := id hD
      have hcn : cnt.toNat < 2 ^ 28 := by have := n28 ha hE.eo; have := hE.hc; omega
      exact ac_fin ha hIC hE.eo.hAr.2.1 hcn hw1 s hs
        (di_mono (fun _ h => h) (fun _ _ _ _ h => h.eo) hD) hg
  · intro m0 m hl h
    exact lv_res h (by simp only [kvA]; nmne) _


/-! ## A generic `var x = f(args); k` step -/

theorem ac_dc {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc) {Ar : BitVec 64} {n : Nat} {kv kvF : List (MlS × ValueHOL 64)}
    (hn1 : ∀ q ∈ kv, q.1 ≠ rn) (hn2 : ∀ q ∈ kvF, q.1 ≠ rn)
    {E Ef : Gam → Ptrs → Mem → LocalsH → Prop}
    {E' : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {Pv : ValueHOL 64 → Prop}
    (hPv : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → Pv v) {k : ProgHOL 64}
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → LV kv s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COutA a sg' vs Γ Γ' q q' s st → Pv v →
      E' v Γ' q' st.memory st.globals)
    (hk : ∀ v, Pv v → HoareG σ X (DI a Ar n (LV ((rn, v) :: kv)) (E' v)) k
      (DQ a Ar n (LV kvF) Ef)) :
    HoareG σ X (DI a Ar n (LV kv) E) (.decCall rn sh f args k) (DQ a Ar n (LV kvF) Ef) := by
  refine hoareG_decCallDQ ha hf hLc hgw hgr (L := LV kv) (E := E)
    (L' := fun v m => LV ((rn, v) :: kv) m ∧ Pv v) (E' := fun v => E' v)
    (L2 := fun _ => LV kvF) (E2 := fun _ => Ef) (Lf := LV kvF) (Ef := Ef) ?_ ?_ ?_ ?_
    (fun m0 m v _ h => lv_res h hn2 _) (fun _ _ _ _ _ h => h)
  · intro s hs hL Γ q he hh hB hn hE vs hvs
    exact ⟨argsOK_any hps (by rw [evs_len2 hvs]; exact hlen), fun x hx => absurd hx (argCells_any hps)⟩
  · intro s st v hL hsh
    exact ⟨lv_cons (s := { st with locals := s.locals }) hL hn1 v, hPv v hsh⟩
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    exact ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB,
      hpost s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co (hPv v hsh)⟩
  · intro v s hs hD hg
    exact hk v hD.1.2 s hs (di_mono (fun m h => h.1) (fun _ _ _ _ h => h) hD) hg

def coa_of_co {a : Act σ} {sg' : Sig} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (co : COut a sg' Γ Γ' q q' s st) (vs : List (ValueHOL 64)) : COutA a sg' vs Γ Γ' q q' s st :=
  ⟨co.heap0, co.ext, co.heap, co.mono, co.nf, co.nfp, fun x h1 _ h3 => co.frame x h1 h3⟩

/-! ## The keys allocation -/

def kvQ (L0 C Ar x y w1 : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  (nm "slots", .rStruct [Wd x, Wd y]) :: (nm "addr", Wd w1) :: kvA L0 C Ar I

def EEc (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) (cnt : BitVec 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧ cnt.toNat ≤ N.toNat

theorem ac_keys {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar arr cnt w1 : BitVec 64} {I : Nat} (hIC : I < C.toNat) (hw1 : LocIn P N w1 20) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvQ L0 C Ar arr cnt w1 I)) (EEc a P N L0 C Ar I cnt))
      acKeys (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  unfold acKeys
  refine hoareG_allocDQ ha hcs.hAS hcs.alloc (SZ := cnt * BitVec.ofNat 64 32)
    (L' := fun K => LV (kvS L0 C Ar arr cnt K w1 I))
    (E' := fun K => EK a P N L0 C Ar I K cnt) (L2 := fun _ => LV (kvA L0 C Ar (I + 1)))
    (E2 := fun _ => EE a P N L0 C Ar (I + 1)) (Lf := LV (kvA L0 C Ar (I + 1)))
    (Ef := EE a P N L0 C Ar (I + 1)) ?_ ?_ ?_ ?_ ?_ (fun _ _ _ _ _ h => h)
  · intro s hs hL
    exact ev_mul2 (ev_cnt (lv_get hL (x := nm "slots") (v := .rStruct [Wd arr, Wd cnt])
      (by simp [kvQ]))) (ev_cw _ 32)
  · intro s st K hL
    refine lv_sub (lv_cons (s := { st with locals := s.locals }) hL
      (by simp only [kvQ, kvA]; nmne) (Wd K)) (fun q hq => ?_)
    simp only [kvS, kvQ, List.mem_cons] at hq ⊢
    tauto
  · intro s st K Γ Γ2 q q2 hs' hL he hh hB hn hE ho
    have hcN := hE.2
    have hN28 := n28 ha hE.1
    have hSZ : (cnt * BitVec.ofNat 64 32).toNat = 32 * cnt.toNat := by
      rw [mulN _ _ (by norm_num), ofNat_toNat_lt _ (by omega)]
    have hco := coa_of_co ho.co [Wd (cnt * BitVec.ofNat 64 32)]
    refine ⟨eo_call hco hB (fun x hx => absurd hx (argCells_any (by simp [allocSig]))) hE.1,
      ?_, ?_, ?_, ?_, hcN, ?_⟩
    · have := ho.blk
      rwa [hSZ] at this
    · have := ho.fresh0
      simp only [hSZ] at this
      exact this
    · intro z hz ⟨h1, h2⟩
      exact ho.fresh z (by rw [hSZ]; exact hz) ((hE.1.fz z h1 h2).2)
    · intro z hz hov
      exact ho.fresh z (by rw [hSZ]; exact hz) ((hB z hov).2)
    · have := ho.stat.2.1
      rw [hSZ] at this
      exact this
  · intro K
    exact ac_jdec ha hcs hIC hw1
  · intro m0 m K hl h
    exact lv_res h (by simp only [kvA]; nmne) _


/-! ## `slots = rlp_list_to_slices(sl.0, sl.1)` -/

def kvZ (L0 C Ar b c w1 : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  (nm "sl", .rStruct [Wd b, Wd c]) :: (nm "addr", Wd w1) :: kvA L0 C Ar I

/-- `P <= b` and `b + c <= P + N` (the pointer pair lies in the outer payload). -/
def Esl (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) (b c : BitVec 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧ P.toNat ≤ b.toNat ∧
    b.toNat + c.toNat ≤ P.toNat + N.toNat

theorem ac_slots {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar b c w1 : BitVec 64} {I : Nat} (hIC : I < C.toNat) (hw1 : LocIn P N w1 20) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvZ L0 C Ar b c w1 I)) (Esl a P N L0 C Ar I b c))
      acSlots (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  unfold acSlots
  refine ac_dc ha hcs.rls (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) (freshFoot_rlp_list_to_slices_tile hcs.hC)
    (kv := kvZ L0 C Ar b c w1 I) (kvF := kvA L0 C Ar (I + 1))
    (by simp only [kvZ, kvA]; nmne) (by simp only [kvA]; nmne)
    (E' := fun v Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧
      ∀ x y : BitVec 64, v = .rStruct [Wd x, Wd y] → y.toNat ≤ N.toNat)
    (Pv := fun v => ∃ x y : BitVec 64, v = .rStruct [Wd x, Wd y])
    (fun v h => rstruct_of_shape h) ?_ ?_
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co ⟨x, y, hv⟩
    subst hv
    have hsl := lv_get hL (x := nm "sl") (v := .rStruct [Wd b, Wd c]) (by simp [kvZ])
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hsl rfl) (evs_cons (ev_cnt hsl) evs_nil)] at hvs
    cases hvs
    obtain ⟨hE0, hPb, hbc⟩ := hE
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh)
      ⟨b, c, rfl, by have := hE0.hP; omega, q, hpe, by have := hE0.hN; omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨-, -, hrest⟩ := hQ x y rfl
    obtain ⟨-, hcn, -, -⟩ := hrest b c rfl
    refine ⟨eo_call co hB (fun x hx => absurd hx (argCells_any (by simp [rlsSig]))) hE0,
      fun x' y' hv' => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl⟩ := hv'
    omega
  · intro v ⟨x, y, hv⟩
    subst hv
    refine hoareG_pre (ac_keys ha hcs hIC (arr := x) (cnt := y) (w1 := w1) hw1) ?_
    intro s hs hD
    refine di_mono (fun m h => lv_sub h (fun q hq => ?_)) (fun Γ q mem g ⟨eo, hy⟩ => ⟨eo, hy x y rfl⟩) hD
    simp only [kvQ, kvZ, List.mem_cons] at hq ⊢
    tauto


/-! ## `sl = tx_list_item(ent.0, 1)` -/

def kvE (L0 C Ar A1 c1 w1 : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  (nm "ent", .rStruct [Wd A1, Wd c1]) :: (nm "addr", Wd w1) :: kvA L0 C Ar I

/-- the entry array `A1` (two slices) is frozen and lies in the outer payload -/
def Eent (a : Act σ) (P N L0 C Ar : BitVec 64) (I : Nat) (A1 : BitVec 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧ FzB A1.toNat (16 * 2) Γ q ∧
    SIn mem A1 2 P.toNat (P.toNat + N.toNat) ∧ A1.toNat + 32 ≤ heapEnd

theorem slot1_eq (M : Mem) (A1 : BitVec 64) :
    slotP M A1 (BitVec.ofNat 64 1) = rd M (A1 + BitVec.ofNat 64 (16 * 1)) ∧
      slotL M A1 (BitVec.ofNat 64 1) = rd M (A1 + BitVec.ofNat 64 (16 * 1 + 8)) := by
  constructor
  · unfold slotP
    congr 2
  · unfold slotL
    rw [BitVec.add_assoc]
    congr 2

theorem slot0_eq (M : Mem) (A1 : BitVec 64) :
    slotP M A1 (BitVec.ofNat 64 0) = rd M (A1 + BitVec.ofNat 64 (16 * 0)) ∧
      slotL M A1 (BitVec.ofNat 64 0) = rd M (A1 + BitVec.ofNat 64 (16 * 0 + 8)) := by
  constructor
  · unfold slotP
    congr 2
  · unfold slotL
    rw [BitVec.add_assoc]
    congr 2

theorem ac_sl {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar A1 c1 w1 : BitVec 64} {I : Nat} (hIC : I < C.toNat) (hw1 : LocIn P N w1 20) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvE L0 C Ar A1 c1 w1 I)) (Eent a P N L0 C Ar I A1))
      acSl1 (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  unfold acSl1
  refine ac_dc ha hcs.litem (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) (funSpec_tx_list_item hcs.hC)
    (kv := kvE L0 C Ar A1 c1 w1 I) (kvF := kvA L0 C Ar (I + 1))
    (by simp only [kvE, kvA]; nmne) (by simp only [kvA]; nmne)
    (E' := fun v Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧
      ∀ x y : BitVec 64, v = .rStruct [Wd x, Wd y] → P.toNat ≤ x.toNat ∧
        x.toNat + y.toNat ≤ P.toNat + N.toNat)
    (Pv := fun v => ∃ x y : BitVec 64, v = .rStruct [Wd x, Wd y])
    (fun v h => rstruct_of_shape h) ?_ ?_
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co ⟨x, y, hv⟩
    subst hv
    have hent := lv_get hL (x := nm "ent") (v := .rStruct [Wd A1, Wd c1]) (by simp [kvE])
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hent rfl) (evs_cons (ev_cw _ 1) evs_nil)] at hvs
    cases hvs
    obtain ⟨hE0, hfz, hsin, hA⟩ := hE
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    have hso : SlotOut s.memory A1 (BitVec.ofNat 64 1) x y :=
      hLc _ rfl q hpe (heap_ord hh) trivial A1 (BitVec.ofNat 64 1) x y rfl rfl
    obtain ⟨e1, e2⟩ := slot1_eq s.memory A1
    have hs1 := hsin 1 (by norm_num)
    obtain ⟨hso1, hso2⟩ := hso
    rw [e2] at hso1
    rw [e1, e2] at hso2
    refine ⟨eo_call co hB (fun x hx => absurd hx (argCells_any (by simp [rlsSig]))) hE0,
      fun x' y' hv' => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl⟩ := hv'
    have h3 := hE0.hN
    have h4 := ha.hord0.2.1
    unfold heapEnd at h4
    obtain ⟨hp1, hp2⟩ := hso2 (by omega)
    omega
  · intro v ⟨x, y, hv⟩
    subst hv
    refine hoareG_pre (ac_slots ha hcs hIC (b := x) (c := y) (w1 := w1) hw1) ?_
    intro s hs hD
    refine di_mono (fun m h => lv_sub h (fun q hq => ?_))
      (fun Γ q mem g ⟨eo, h⟩ => ⟨eo, (h x y rfl).1, (h x y rfl).2⟩) hD
    simp only [kvZ, kvE, List.mem_cons] at hq ⊢
    tauto


/-! ## `addr = tx_fixed_bytes(ent.0, 0, 20)` -/

theorem sin_keep {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} (co : COutA a sg' vs Γ Γ' q q' s st) {A : BitVec 64} {c lo hi : Nat}
    (hfz : FzB A.toNat (16 * c) Γ q) (hA : A.toNat + 16 * c ≤ heapEnd)
    (hArg : ∀ x, ArgCells sg'.params vs x → ¬ (A.toNat ≤ x.toNat ∧ x.toNat < A.toNat + 16 * c))
    (h : SIn s.memory A c lo hi) : SIn st.memory A c lo hi := by
  have hse := heapEnd_lt64
  have key : ∀ y : BitVec 64, A.toNat ≤ y.toNat → y.toNat < A.toNat + 16 * c →
      rd st.memory y = rd s.memory y := fun y h1 h2 =>
    rd_congr (co.frame y (notW_of_fz co.heap0 hfz h1 h2) (fun hx => hArg y hx ⟨h1, h2⟩)
      (hfz y h1 h2).2)
  intro j hj
  have hs := h j hj
  have e1 : (A + BitVec.ofNat 64 (16 * j)).toNat = A.toNat + 16 * j := tnl _ _ (by omega)
  have e2 : (A + BitVec.ofNat 64 (16 * j + 8)).toNat = A.toNat + (16 * j + 8) := tnl _ _ (by omega)
  rw [key _ (by omega) (by omega), key _ (by omega) (by omega)]
  exact hs

def kvE0 (L0 C Ar A1 c1 : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  (nm "ent", .rStruct [Wd A1, Wd c1]) :: kvA L0 C Ar I

theorem ac_addr {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar A1 c1 : BitVec 64} {I : Nat} (hIC : I < C.toNat) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvE0 L0 C Ar A1 c1 I)) (Eent a P N L0 C Ar I A1))
      acAddr (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  unfold acAddr
  refine ac_dc ha hcs.fixed (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig])
    (by simp [txfSig]) (funSpec_tx_fixed_bytes hcs.hC)
    (kv := kvE0 L0 C Ar A1 c1 I) (kvF := kvA L0 C Ar (I + 1))
    (by simp only [kvE0, kvA]; nmne) (by simp only [kvA]; nmne)
    (E' := fun v Γ q mem g => Eent a P N L0 C Ar I A1 Γ q mem g ∧
      ∀ w : BitVec 64, v = Wd w → LocIn P N w 20)
    (Pv := fun v => ∃ w : BitVec 64, v = Wd w)
    (fun v h => by obtain ⟨w, rfl⟩ := val_of_shapeEq_one' h; exact ⟨w, rfl⟩) ?_ ?_
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hv
    obtain ⟨hE0, hfz, hsin, hA⟩ := hE
    refine ⟨⟨eo_call co hB (fun x hx => absurd hx (argCells_any (by simp [txfSig]))) hE0,
      fzB_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hfz,
      sin_keep co hfz (by omega) (fun x hx => absurd hx (argCells_any (by simp [txfSig]))) hsin, hA⟩, ?_⟩
    rintro w rfl
    have hent := lv_get hL (x := nm "ent") (v := .rStruct [Wd A1, Wd c1]) (by simp [kvE0])
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hent rfl) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 20) evs_nil))] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    have hso : SlotOut s.memory A1 (BitVec.ofNat 64 0) w (BitVec.ofNat 64 20) :=
      hLc _ rfl q hpe (heap_ord hh) trivial A1 (BitVec.ofNat 64 0) (BitVec.ofNat 64 20) w rfl rfl
    obtain ⟨e1, e2⟩ := slot0_eq s.memory A1
    have hs0 := hsin 0 (by norm_num)
    obtain ⟨hso1, hso2⟩ := hso
    rw [e2] at hso1
    rw [e1, e2] at hso2
    have h3 := hE0.hN
    have h4 := ha.hord0.2.1
    unfold heapEnd at h4
    obtain ⟨hp1, hp2⟩ := hso2 (by omega)
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := by norm_num
    unfold LocIn
    omega
  · intro v ⟨w1, hv⟩
    subst hv
    intro s hs hD hg
    obtain ⟨hL, Γ, q, he, hh, hB, hn, hE0, hloc⟩ := hD
    exact ac_sl ha hcs hIC (hloc w1 rfl) s hs (di_mono (fun m h => lv_sub h (fun q hq => by
      simp only [kvE, kvE0, List.mem_cons] at hq ⊢; tauto)) (fun _ _ _ _ h => h)
      ⟨hL, Γ, q, he, hh, hB, hn, hE0⟩) hg

/-! ## `ent = rlp_list_to_slices(it.1, it.2)` and the guard -/

theorem ne_false {x y : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual x y = false) : x = y := by
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using h

def kvI (L0 C Ar a0 b0 c0 d0 : BitVec 64) (I : Nat) : List (MlS × ValueHOL 64) :=
  (nm "it", .rStruct [Wd a0, Wd b0, Wd c0, Wd d0]) :: kvA L0 C Ar I

theorem ac_ent {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar a0 b0 c0 d0 : BitVec 64} {I : Nat} (hIC : I < C.toNat) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvI L0 C Ar a0 b0 c0 d0 I)) (Esl a P N L0 C Ar I b0 c0))
      acEnt (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  unfold acEnt
  refine ac_dc ha hcs.rls (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) (freshFoot_rlp_list_to_slices_tile hcs.hC)
    (kv := kvI L0 C Ar a0 b0 c0 d0 I) (kvF := kvA L0 C Ar (I + 1))
    (by simp only [kvI, kvA]; nmne) (by simp only [kvA]; nmne)
    (E' := fun v Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧
      ∀ x y : BitVec 64, v = .rStruct [Wd x, Wd y] → y.toNat = 2 →
        FzB x.toNat (16 * 2) Γ q ∧ SIn mem x 2 P.toNat (P.toNat + N.toNat) ∧ x.toNat + 32 ≤ heapEnd)
    (Pv := fun v => ∃ x y : BitVec 64, v = .rStruct [Wd x, Wd y])
    (fun v h => rstruct_of_shape h) ?_ ?_
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co ⟨x, y, hv⟩
    subst hv
    have hit := lv_get hL (x := nm "it") (v := .rStruct [Wd a0, Wd b0, Wd c0, Wd d0]) (by simp [kvI])
    obtain ⟨-, h1, h2⟩ := ev_it_field hit
    rw [evs_cons h1 (evs_cons h2 evs_nil)] at hvs
    cases hvs
    obtain ⟨hE0, hPb, hbc⟩ := hE
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh)
      ⟨b0, c0, rfl, by have := hE0.hP; omega, q, hpe, by have := hE0.hN; omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨hq1, hq2, hrest⟩ := hQ x y rfl
    obtain ⟨hsn, -, -, -⟩ := hrest b0 c0 rfl
    refine ⟨eo_call co hB (fun x hx => absurd hx (argCells_any (by simp [rlsSig]))) hE0,
      fun x' y' hv' hy2 => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl⟩ := hv'
    have hqo := (heap_ord co.heap).2.1
    refine ⟨?_, ?_, ?_⟩
    · exact fzB_arr co.heap0 co.heap (co.nfp rfl) (b := x.toNat) (n := 16 * 2)
        (fun _ => hq1 (by omega)) (by omega)
    · rw [hy2] at hsn
      exact Spec.Mpt.Dec.sIn_mono hsn hPb hbc
    · omega
  · intro v ⟨x, y, hv⟩
    subst hv
    refine hoareG_seqDQ (hoareG_guardDL ha.hH
      (L' := fun m => LV ((nm "ent", .rStruct [Wd x, Wd y]) :: kvI L0 C Ar a0 b0 c0 d0 I) m ∧
        y = BitVec.ofNat 64 2) ?_) ?_
    · intro s hs hl hc
      have hent := lv_get hl (x := nm "ent") (v := .rStruct [Wd x, Wd y]) (List.Mem.head _)
      exact ⟨hl, (ne_false (cmp_val_false hc (ev_cnt hent) (ev_cw _ 2)))⟩
    · intro s hs hD hg
      obtain ⟨⟨hl, hy⟩, Γ, q, he, hh, hB, hn, hE⟩ := id hD
      have hy2 : y.toNat = 2 := by rw [hy]; rfl
      obtain ⟨hE0, hz⟩ := hE
      obtain ⟨hz1, hz2, hz3⟩ := hz x y rfl hy2
      exact ac_addr ha hcs hIC (A1 := x) (c1 := y) s hs
        ⟨lv_sub hl (fun q hq => by simp only [kvE0, kvI, List.mem_cons] at hq ⊢; tauto),
          Γ, q, he, hh, hB, hn, hE0, hz1, hz2, hz3⟩ hg

/-! ## `it = rlp_item(slot P, slot L)` -/

def accPE : ExpHOL 64 :=
  .load .one (.op .add [.rfield 0 (lv (nm "lst")), .panop .mul [lv (nm "i"), cw 16]])
def accLE : ExpHOL 64 :=
  .load .one (.op .add [.rfield 0 (lv (nm "lst")), .panop .mul [lv (nm "i"), cw 16], cw 8])

theorem ev_accP {s : State σ} {L0 C I : BitVec 64}
    (hl : s.locals.lookup (nm "lst") = some (.rStruct [Wd L0, Wd C]))
    (hi : s.locals.lookup (nm "i") = some (Wd I)) {v : ValueHOL 64} (h : ev s accPE = some v) :
    v = Wd (rd s.memory (L0 + I * BitVec.ofNat 64 16)) := by
  obtain ⟨w, hw, -, rfl⟩ := Spec.Mpt.Leaves.ev_load1_inv' h
  obtain ⟨x, y, hx, hy, hxy⟩ := Spec.Mpt.Leaves.ev_add2_inv' hw
  obtain ⟨u, z, hu, hz, huz⟩ := Spec.Mpt.Leaves.ev_mul2_inv' hy
  rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx; cases hx
  rw [ev_lw hi] at hu; cases hu
  rw [ev_cw] at hz; cases hz
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxy huz
  subst huz; subst hxy
  rfl

theorem ev_accL {s : State σ} {L0 C I : BitVec 64}
    (hl : s.locals.lookup (nm "lst") = some (.rStruct [Wd L0, Wd C]))
    (hi : s.locals.lookup (nm "i") = some (Wd I)) {v : ValueHOL 64} (h : ev s accLE = some v) :
    v = Wd (rd s.memory (L0 + (I * BitVec.ofNat 64 16 + BitVec.ofNat 64 8))) := by
  obtain ⟨w, hw, -, rfl⟩ := Spec.Mpt.Leaves.ev_load1_inv' h
  obtain ⟨x, y, z, hx, hy, hz, hxyz⟩ := Spec.Mpt.Leaves.ev_add3_inv' hw
  obtain ⟨u, t, hu, ht, hut⟩ := Spec.Mpt.Leaves.ev_mul2_inv' hy
  rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx; cases hx
  rw [ev_lw hi] at hu; cases hu
  rw [ev_cw] at ht; cases ht
  rw [ev_cw] at hz; cases hz
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxyz hut
  subst hut; subst hxyz
  rfl

theorem acc_slot_in {mem : Mem} {P N L0 C : BitVec 64} {I : Nat} (hS : SIn mem L0 C.toNat P.toNat (P.toNat + N.toNat))
    (hI : I < C.toNat) (hI64 : I < 2 ^ 64) :
    P.toNat ≤ (rd mem (L0 + BitVec.ofNat 64 I * BitVec.ofNat 64 16)).toNat ∧
      (rd mem (L0 + BitVec.ofNat 64 I * BitVec.ofNat 64 16)).toNat +
        (rd mem (L0 + (BitVec.ofNat 64 I * BitVec.ofNat 64 16 + BitVec.ofNat 64 8))).toNat ≤
          P.toNat + N.toNat := by
  have h := hS I hI
  have e1 : BitVec.ofNat 64 I * BitVec.ofNat 64 16 = BitVec.ofNat 64 (16 * I) := by
    rw [mulN _ _ (by norm_num), ofNat_toNat_lt I hI64]
  have e2 : L0 + (BitVec.ofNat 64 (16 * I) + BitVec.ofNat 64 8) =
      L0 + BitVec.ofNat 64 (16 * I + 8) := by rw [BitVec.ofNat_add_ofNat]
  rw [e1, e2]
  exact h


theorem rstruct4_of_shape {v : ValueHOL 64}
    (h : shapeEqHOL (shapeOfHOLExact v) auSh4 = true) :
    ∃ a b c d : BitVec 64, v = .rStruct [Wd a, Wd b, Wd c, Wd d] := by
  have hh : shapeOfHOLExact v = shK 4 := (shapeEqHOL_eq_true _ _).mp h
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape hh
  match ws, hl with
  | [x, y, z, w], _ => exact ⟨x, y, z, w, rfl⟩

theorem ac_it {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a)
    {P N L0 C Ar : BitVec 64} {I : Nat} (hIC : I < C.toNat) :
    HoareG σ X (DI a Ar (24 * C.toNat) (LV (kvA L0 C Ar I)) (EE a P N L0 C Ar I)) acLoop
      (DQ a Ar (24 * C.toNat) (LV (kvA L0 C Ar (I + 1))) (EE a P N L0 C Ar (I + 1))) := by
  have hse := heapEnd_lt64
  unfold acLoop
  refine ac_dc ha hcs.item (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) (freshFoot_rlp_item' hcs.hC)
    (kv := kvA L0 C Ar I) (kvF := kvA L0 C Ar (I + 1))
    (by simp only [kvA]; nmne) (by simp only [kvA]; nmne)
    (E' := fun v Γ q mem _ => EOc a P N L0 C Ar I Γ q mem ∧
      ∀ a0 b0 c0 d0 : BitVec 64, v = .rStruct [Wd a0, Wd b0, Wd c0, Wd d0] →
        P.toNat ≤ b0.toNat ∧ b0.toNat + c0.toNat ≤ P.toNat + N.toNat)
    (Pv := fun v => ∃ a0 b0 c0 d0 : BitVec 64, v = .rStruct [Wd a0, Wd b0, Wd c0, Wd d0])
    (fun v h => rstruct4_of_shape h) ?_ ?_
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co ⟨a0, b0, c0, d0, hv⟩
    subst hv
    have hl := lv_get hL (x := nm "lst") (v := .rStruct [Wd L0, Wd C]) (by simp [kvA])
    have hi := lv_get hL (x := nm "i") (v := Wd (BitVec.ofNat 64 I)) (by simp [kvA])
    obtain ⟨va, vb, rfl, hva, hvb⟩ := Spec.Mpt.Leaves.evs_two_inv' hvs
    have hva' := ev_accP hl hi hva
    have hvb' := ev_accL hl hi hvb
    subst hva'; subst hvb'
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh) trivial
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨P', L', hvs', hRi⟩ := hQ
    simp only [List.cons.injEq, Wd, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
    obtain ⟨rfl, rfl⟩ := hvs'
    obtain ⟨hs1, hs2⟩ := acc_slot_in hE.sin hIC (by omega)
    have hN := hE.hN
    have hp0 := ha.hord0.2.1
    unfold heapEnd at hp0 hse
    obtain ⟨-, hr2⟩ := hRi a0 b0 c0 d0 rfl
    obtain ⟨hr3, hr4⟩ := hr2 (by omega)
    refine ⟨eo_call co hB (fun x hx => absurd hx (argCells_any (by simp [rlsSig]))) hE,
      fun a0' b0' c0' d0' hv' => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl, rfl, rfl⟩ := hv'
    omega
  · intro v ⟨a0, b0, c0, d0, hv⟩
    subst hv
    refine hoareG_seqDQ (hoareG_guardDI ha.hH) ?_
    intro s hs hD hg
    exact ac_ent ha hcs hIC (a0 := a0) (b0 := b0) (c0 := c0) (d0 := d0) s hs
      (di_mono (fun m h => h) (fun Γ q mem g ⟨eo, h⟩ => ⟨eo, (h a0 b0 c0 d0 rfl).1,
        (h a0 b0 c0 d0 rfl).2⟩) hD) hg


/-! ## The outer loop -/

theorem ac_while {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a) {P N L0 C Ar : BitVec 64} :
    HoareG σ X (fun s => ∃ I : Nat, DI a Ar (24 * C.toNat)
        (fun m => I ≤ C.toNat ∧ LV (kvA L0 C Ar I) m) (EE a P N L0 C Ar I) s) acWhile
      (DQ a Ar (24 * C.toNat) (AuLx L0 C Ar)
        (fun Γ q mem _ => EOc a P N L0 C Ar C.toNat Γ q mem)) := by
  have hse := heapEnd_lt64
  unfold acWhile
  refine hoareG_whileDIx ha.hH (L := fun I m => I ≤ C.toNat ∧ LV (kvA L0 C Ar I) m)
    (E := EE a P N L0 C Ar) ?_ ?_
  · intro I s hs ⟨hD, hc⟩ hg
    obtain ⟨⟨hIl, hl⟩, rest⟩ := id hD
    have hlt := lower_true (cmp_true (ev_lw (lv_get hl (x := nm "i") (v := Wd (BitVec.ofNat 64 I))
      (by simp [kvA]))) (ev_bhCnt (lv_get hl (x := nm "lst") (v := .rStruct [Wd L0, Wd C])
      (by simp [kvA]))) hc)
    rw [ofNat_toNat_lt I (by have := C.isLt; omega)] at hlt
    have hq := ac_it ha hcs hlt s hs (di_mono (fun m h => h.2) (fun _ _ _ _ h => h) hD) hg
    refine ⟨fun hr => ?_, hq.2⟩
    exact di_mono (fun m h => ⟨by omega, h⟩) (fun _ _ _ _ h => h) (hq.1 hr) |> fun h => ⟨I + 1, h⟩
  · intro s I hs hD hc0
    obtain ⟨⟨hIl, hl⟩, Γ, q, he, hh, hB, hn, hE⟩ := id hD
    have hi := lv_get hl (x := nm "i") (v := Wd (BitVec.ofNat 64 I)) (by simp [kvA])
    have hlc := lv_get hl (x := nm "lst") (v := .rStruct [Wd L0, Wd C]) (by simp [kvA])
    have hfl := lower_false (cmp_val_false hc0 (ev_lw hi) (ev_bhCnt hlc))
    rw [ofNat_toNat_lt I (by have := C.isLt; omega)] at hfl
    have hIC : I = C.toNat := by omega
    subst hIC
    exact ⟨⟨hlc, lv_get hl (x := nm "recs") (v := Wd Ar) (by simp [kvA])⟩, Γ, q, he, hh, hB, hn, hE⟩

/-! ## The return and the adoption of the records -/

theorem wf_acc {σ : Type} {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = Types.tACC) :
    (Hooks.guestHooksR (σ := σ)).wf Γ s o := by
  refine Hooks.recHooks_guestR.make Γ s o (by rw [ht]; exact Hooks.recTy_tACC) fun e he het => ?_
  have hm := Hooks.recTab_ty he
  rw [het, ht] at hm
  exact absurd hm (by decide)

/-- The value fact exported by the summary. -/
def AcQ (P N : BitVec 64) (Γ' : Gam) (mem : Mem) (v : ValueHOL 64) : Prop :=
  ∀ recs cnt : BitVec 64, v = .rStruct [Wd recs, Wd cnt] →
    cnt.toNat ≤ N.toNat ∧ Hooks.SubArr Γ' recs cnt.toNat Types.tACC 24 ∧
      (∀ j, j < cnt.toNat → (rd mem (recs + BitVec.ofNat 64 (24 * j + 16))).toNat < 2 ^ 28) ∧
      ∀ j, j < cnt.toNat → LocIn P N (rd mem (recs + BitVec.ofNat 64 (24 * j))) 20

theorem ac_ret {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    {P N L0 C Ar : BitVec 64} :
    HoareG σ X (DI a Ar (24 * C.toNat) (AuLx L0 C Ar)
        (fun Γ q mem _ => EOc a P N L0 C Ar C.toNat Γ q mem)) acRet
      (NQM a (fun Γ' p' mem v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AcQ P N Γ' mem v)) := by
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  unfold acRet
  refine hoareG_return fun t hs' ⟨⟨h1, h2⟩, Γ, q, he, hh, hB, hn, hE⟩ v hv => ?_
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  rw [evs_cons (ev_lw h2) (evs_cons (ev_bhCnt h1) evs_nil)] at hvs
  cases hvs
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  have hRet : ∀ Γ' p', RetOK Γ' a.p0 p' a.vs a.sg.ret (.rStruct [Wd Ar, Wd C]) :=
    fun Γ' p' i r w hr _ => by rw [hret] at hr; simp at hr
  have hcnN := hE.hC
  obtain ⟨hs1, hs2, hA8⟩ := hE.hAr
  by_cases hc0 : C.toNat = 0
  · refine ⟨Γ, q, he, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh, fun v' hv' => ?_⟩
    cases hv'
    refine ⟨hRet _ _, fun recs cnt' hv'' => ?_⟩
    simp only [Wd, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv''
    obtain ⟨-, rfl⟩ := hv''
    exact ⟨hcnN, Or.inl hc0, fun j hj => absurd hj (by omega), fun j hj => absurd hj (by omega)⟩
  · have hreg : (a.C.ty Types.tACC).region = .heap := by rw [hC]; exact Hooks.acc_heap
    have hprot : ∀ k, (a.C.ty Types.tACC).slot k = .prot := by rw [hC]; exact Hooks.acc_prot
    have hnt : a.C.tags.lookup Types.tACC = none := by
      rw [hC]; exact Types.recIds_untagged Types.tACC (by simp)
    have hmin : (a.C.ty Types.tACC).minSz ≤ 24 * C.toNat := by
      rw [hC]
      have h1 := Types.recIds_minSz.2.1
      omega
    obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono he hh (Ar := Ar) (n := 24 * C.toNat)
      (ty := Types.tACC) hreg hprot hnt (by omega) (by omega) hmin ⟨hs1, hs2⟩ hA8 hB hn hgr
      (fun hLn => by rw [hH]; exact wf_acc rfl)
    refine ⟨_, q, hExt, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh2, fun v' hv' => ?_⟩
    cases hv'
    refine ⟨hRet _ _, fun recs cnt' hv'' => ?_⟩
    simp only [Wd, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv''
    obtain ⟨rfl, rfl⟩ := hv''
    exact ⟨hcnN, Or.inr ⟨⟨Ar, Types.tACC, 24 * C.toNat⟩,
      List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl, le_rfl, hs2⟩, hE.good, hE.loc⟩

theorem ac_rest {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    {P N L0 C Ar : BitVec 64} :
    HoareG σ X (DI a Ar (24 * C.toNat) (AuLx L0 C Ar) (EE a P N L0 C Ar 0)) acRest
      (NQM a (fun Γ' p' mem v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AcQ P N Γ' mem v)) := by
  unfold acRest
  refine hoareG_decDIM ha.hH (L' := fun m => 0 ≤ C.toNat ∧ LV (kvA L0 C Ar 0) m) ?_ ?_
  · intro s hs ⟨h1, h2⟩ v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨Nat.zero_le _, ?_⟩
    intro q hq
    simp only [kvA, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl
    · rw [lk_set_ne _ _ (show nm "i" ≠ nm "lst" by decide)]; exact h1
    · rw [lk_set_ne _ _ (show nm "i" ≠ nm "recs" by decide)]; exact h2
    · rw [lk_set_self]; rfl
  · refine hoareG_seqDIM (hoareG_pre (ac_while ha hcs (P := P) (N := N) (L0 := L0) (C := C) (Ar := Ar)) ?_)
      (ac_ret ha hC hH hgr hret (P := P) (N := N) (L0 := L0) (C := C) (Ar := Ar))
    intro s hs hD
    exact ⟨0, di_mono (fun m h => h) (fun _ _ _ _ h => h) hD⟩


/-! ## The allocation of the records, the first call, the summary -/

def EAc (a : Act σ) (P N L0 C : BitVec 64) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem _ => FzB L0.toNat (16 * C.toNat) Γ q ∧ SIn mem L0 C.toNat P.toNat (P.toNat + N.toNat) ∧
    heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp ∧ C.toNat ≤ N.toNat ∧
    L0.toNat + 16 * C.toNat ≤ heapEnd

theorem ac_B {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    {P N L0 C : BitVec 64} :
    HoareG σ X (DI a 0 0 (fun m => m.lookup (nm "lst") = some (.rStruct [Wd L0, Wd C]))
        (EAc a P N L0 C)) acAlloc
      (NQM a (fun Γ' p' mem v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AcQ P N Γ' mem v)) := by
  have hse := heapEnd_lt64
  unfold acAlloc
  refine hoareG_allocDI ha hcs.hAS hcs.alloc (SZ := C * BitVec.ofNat 64 24)
    (Ar2 := fun K => K) (n2 := fun _ => 24 * C.toNat)
    (L' := fun K => AuLx L0 C K) (E' := fun K => EE a P N L0 C K 0) ?_ ?_ ?_ ?_
  · intro s hs hL
    exact ev_mul2 (ev_bhCnt hL) (ev_cw _ 24)
  · intro s st K hL
    refine ⟨?_, lk_set_self _ _ _⟩
    rw [lk_set_ne _ _ (by decide)]; exact hL
  · intro s st K Γ Γ2 q q2 hs' hL he hh hB hn hE ho
    obtain ⟨hz1, hz2, hz3, hz4, hz5, hz6⟩ := hE
    have hp0 := ha.hord0.2.1
    have hz3' := hz3
    unfold heapBase at hz3'
    unfold heapEnd at hp0 hse
    have hN28 : N.toNat < 2 ^ 28 := by unfold heapBase heapEnd at *; omega
    have hSZ : (C * BitVec.ofNat 64 24).toNat = 24 * C.toNat := by
      rw [mulN _ _ (by norm_num), ofNat_toNat_lt _ (by omega)]
    refine ⟨?_, ?_, ?_⟩
    · have := ho.blk
      rwa [hSZ] at this
    · have := ho.fresh0
      simp only [hSZ] at this
      exact this
    · refine ⟨fzB_after (heap_ord hh) (heap_ord ho.co.heap) ho.co.mono ho.co.nf hz1, ?_, ?_,
        fun j hj => absurd hj (by omega), fun j hj => absurd hj (by omega), by unfold heapBase; omega,
        hz4, hz5, hz6, ?_, by omega⟩
      · rw [ho.mem]; exact hz2
      · intro x hx ⟨h1, h2⟩
        exact ho.fresh x (by rw [hSZ]; exact hx) ((hz1 x h1 h2).2)
      · have h1 := ho.stat
        rw [hSZ] at h1
        exact h1
  · intro K
    exact ac_rest ha hcs hC hH hgr hret

theorem ac_A {a : Act σ} (ha : ActOK a X) (hcs : AcCS X a) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    {P N : BitVec 64} :
    HoareG σ X (DI a 0 0 (LK [(nm "p", P), (nm "len", N)])
      (fun _ _ _ _ => heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)) acBody
      (NQM a (fun Γ' p' mem v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AcQ P N Γ' mem v)) := by
  have hse := heapEnd_lt64
  unfold acBody
  refine hoareG_decCallDIM (E := fun _ _ _ _ => heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)
    (L := LK [(nm "p", P), (nm "len", N)])
    (L' := fun v m => ∃ x y : BitVec 64, v = .rStruct [Wd x, Wd y] ∧ m.lookup (nm "lst") = some v)
    (E' := fun v Γ q mem _ => ∀ x y : BitVec 64, v = .rStruct [Wd x, Wd y] →
      FzB x.toNat (16 * y.toNat) Γ q ∧ SIn mem x y.toNat P.toNat (P.toNat + N.toNat) ∧
        heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp ∧ y.toNat ≤ N.toNat ∧
        x.toNat + 16 * y.toNat ≤ heapEnd)
    ha hcs.rls (freshFoot_rlp_list_to_slices_tile hcs.hC) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) ?_ ?_ ?_ ?_
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
    obtain ⟨h0, h1, hrest⟩ := hQ x y rfl
    obtain ⟨hsin, hcn, -, -⟩ := hrest P N rfl
    have hqo := (heap_ord co.heap).2.1
    refine ⟨Γ', p', ext_trans he co.ext, co.heap, blkF_after (heap_ord hh) (heap_ord co.heap) co.mono
      co.nf hB, fun x' y' hv' => ?_⟩
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv'
    obtain ⟨rfl, rfl⟩ := hv'
    exact ⟨fzB_arr co.heap0 co.heap (co.nfp rfl) (fun hn => h0 (by omega)) h1, hsin, hE.1, hE.2,
      hcn, by omega⟩
  · intro v s hs hP hg
    obtain ⟨⟨x, y, hv, hL⟩, Γ, q, he, hh, hB, hn, hE⟩ := hP
    subst hv
    exact ac_B ha hcs hC hH hgr hret s hs ⟨hL, Γ, q, he, hh, hB, hn, hE x y rfl⟩ hg

def acSig : Sig := ⟨[.any, .any], [], [], true⟩

def AcRx (vs : List (ValueHOL 64)) (Γ' : Gam) (mem : Mem) (v : ValueHOL 64) : Prop :=
  ∀ P N : BitVec 64, vs = [Wd P, Wd N] → AcQ P N Γ' mem v


set_option maxHeartbeats 0 in
theorem sumSpecA_decode_access_list
    (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_access_list") acSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → AcRx vs Γ' t.memory v) := by
  have hX := hF.hX
  have hrls : CSumm σ X Types.guestC Hooks.guestHooksR (nm "rlp_list_to_slices") rlsSig [] :=
    ctab% htab
  have hitem : CSumm σ X Types.guestC Hooks.guestHooksR (nm "rlp_item") rlsSig [] :=
    ctab% htab
  have hfix : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_fixed_bytes") txfSig [] :=
    ctab% htab
  have hlitem : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_list_item") rlsSig [] :=
    ctab% htab
  have hmc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "memcpy") Helpers.sigMemcpy [] :=
    ctab% htab
  have halloc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine sumSpecA_of_heapQM hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_access_list
    (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, p, hp, hPL⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  rw [hh.2.1] at hp
  cases hp
  set a := actOf Types.guestC Hooks.guestHooksR acSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0
    with hadef
  have haC : a.Cb = Types.guestC := rfl
  have hC : a.C = Types.guestC := rfl
  have hH : a.H = Hooks.guestHooksR := rfl
  have hgr : a.sg.grows = true := rfl
  have hret : a.sg.ret = [] := rfl
  rw [← haC] at hrls hitem hfix hlitem hmc halloc
  rw [← hH] at hrls hitem hfix hlitem hmc halloc
  refine hoareG_conseq (P := DI a 0 0 (LK [(nm "p", Pv), (nm "len", Lv)])
    (fun _ _ _ _ => heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ a.p0.hp))
    (Q := NQM a (fun Γ' p' mem v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AcQ Pv Lv Γ' mem v)) ?_ ?_ ?_
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
    simp only [Wd, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact (hv v hv').2
  exact ac_A ha ⟨hX, hrls, hitem, hfix, hlitem, halloc, hAS, hmc⟩ hC hH hgr hret

/-- **`decode_access_list` at the challenge context and `guestHooksR`.** -/
theorem sumSpecA_decode_access_list_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_access_list") acSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → AcRx vs Γ' t.memory v) :=
  sumSpecA_decode_access_list foldOK_guestR tab26_guestR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_access_list
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_access_list_guestR
