import InitECandidate.Solver.MemSafe.Rec.TxBh
import InitECandidate.Solver.MemSafe.Rec.DecPay
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_authorizations`: the code

```
fun {1,1} decode_authorizations(1 p, 1 len) {
  var {1,1} lst = rlp_list_to_slices(p, len);
  var 1 recs = alloc(lst.1 * 120);
  var i = 0;
  while i <+ lst.1 { ...six fields into rec a = recs + i * 120...; i = i + 1; }
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
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot)
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe.Types (tAUTH)

def Wd (w : BitVec 64) : ValueHOL 64 := .val (.word w)

/-- `st a + k, v` -/
def auSt (k : Nat) (v : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm "a"), cw k]) v

def auSh4 : ShapeHOL := .comb [.one, .one, .one, .one]

def auU256 (k : Nat) : List (ExpHOL 64) := [.rfield 0 (lv (nm "ent")), cw k, cw 32]

def auS5 : ProgHOL 64 :=
  .decCall (nm "s") auSh4 (nm "tx_scalar_u256") (auU256 5)
    (.seq (auSt 88 (lv (nm "s"))) (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def auS4 : ProgHOL 64 :=
  .decCall (nm "r") auSh4 (nm "tx_scalar_u256") (auU256 4) (.seq (auSt 56 (lv (nm "r"))) auS5)

def auS3 : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "w"), none)) (nm "tx_scalar_word")
    [.rfield 0 (lv (nm "ent")), cw 3, cw 1, cw 12]) (.seq (auSt 48 (lv (nm "w"))) auS4)

def auS2 : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "tx_scalar_word") [.rfield 0 (lv (nm "ent")), cw 2, cw 8, cw 12]
    (.seq (auSt 40 (lv (nm "w"))) auS3)

def auS1 : ProgHOL 64 :=
  .decCall (nm "addr") .one (nm "tx_fixed_bytes") [.rfield 0 (lv (nm "ent")), cw 1, cw 20]
    (.seq (auSt 32 (lv (nm "addr"))) auS2)

def auS0 : ProgHOL 64 :=
  .decCall (nm "cid") auSh4 (nm "tx_scalar_u256") (auU256 0) (.seq (auSt 0 (lv (nm "cid"))) auS1)

def auSa : ProgHOL 64 :=
  .dec (nm "a") .one (.op .add [lv (nm "recs"), .panop .mul [lv (nm "i"), cw 120]]) auS0

def auGuard (x : String) (f : Nat) (c : Nat) : ProgHOL 64 :=
  .ite (.cmp .notEqual (.rfield f (lv (nm x))) (cw c)) (.raise (nm "TxErr") (cw 20)) .skip

def auEnt : ProgHOL 64 :=
  .decCall (nm "ent") (.comb [.one, .one]) (nm "rlp_list_to_slices")
    [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))] (.seq (auGuard "ent" 1 6) auSa)

def auLoop : ProgHOL 64 :=
  .decCall (nm "it") auSh4 (nm "rlp_item")
    [.load .one (.op .add [.rfield 0 (lv (nm "lst")), .panop .mul [lv (nm "i"), cw 16]]),
     .load .one (.op .add [.rfield 0 (lv (nm "lst")), .panop .mul [lv (nm "i"), cw 16], cw 8])]
    (.seq (auGuard "it" 0 1) auEnt)

def auWhile : ProgHOL 64 := .while (.cmp .lower (lv (nm "i")) bhCnt) auLoop

def auRet : ProgHOL 64 := .return (.rstruct [lv (nm "recs"), bhCnt])

def auRest : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq auWhile auRet)

def auAlloc : ProgHOL 64 :=
  .decCall (nm "recs") .one (nm "alloc") [.panop .mul [bhCnt, cw 120]] auRest

def auBody : ProgHOL 64 :=
  .decCall (nm "lst") (.comb [.one, .one]) (nm "rlp_list_to_slices") [lv (nm "p"), lv (nm "len")] auAlloc

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_authorizations : fnEntry Guest.Software.guestFn_decode_authorizations =
    (nm "decode_authorizations", [(nm "p", .one), (nm "len", .one)], auBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_authorizations : guestCode (nm "decode_authorizations") =
    some ([(nm "p", .one), (nm "len", .one)], auBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 305) (by decide)) ⟨_, rfl⟩
    entry_decode_authorizations

/-! ## Stages -/

variable {σ : Type} {X : Ctx 64}

theorem au_off (Ar I : BitVec 64) (k : Nat) (hk : k % 8 = 0) (hlt : I.toNat * 120 + k < 2 ^ 64) :
    Ar + I * BitVec.ofNat 64 120 + BitVec.ofNat 64 k =
      Ar + BitVec.ofNat 64 (8 * (15 * I.toNat + k / 8)) := by
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  have h1 : (I * BitVec.ofNat 64 120).toNat = I.toNat * 120 := by
    rw [BitVec.toNat_mul]; exact Nat.mod_eq_of_lt (by simp; omega)
  rw [BitVec.toNat_add, h1, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  have : 8 * (15 * I.toNat + k / 8) = I.toNat * 120 + k := by omega
  rw [this]
  have h2 : k % 2 ^ 64 = k := Nat.mod_eq_of_lt (by omega)
  rw [h2]

theorem ev_au_addr {s : State σ} {Ar I : BitVec 64} {k : Nat}
    (h : s.locals.lookup (nm "a") = some (Wd (Ar + I * BitVec.ofNat 64 120))) :
    ev s (.op .add [lv (nm "a"), cw k]) =
      some (.val (.word (Ar + I * BitVec.ofNat 64 120 + BitVec.ofNat 64 k))) :=
  ev_add2 (ev_lw h) (ev_cw _ k)

theorem au_stage {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar cnt : BitVec 64} {Φ : Prop} (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd)
    {Lb Lfin : LocalsH → Prop} (k nw : Nat) (hk8 : k % 8 = 0) (hkn : k + 8 * nw ≤ 120)
    (P : ValueHOL 64 → Prop) (hP : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → P v)
    (hlenP : ∀ v, P v → (flattenHOL v).length = nw)
    (haddr : ∀ m, Lb m → ∃ I : BitVec 64, I.toNat < cnt.toNat ∧
      m.lookup (nm "a") = some (Wd (Ar + I * BitVec.ofNat 64 120)))
    (hLbs : ∀ (s st : State σ) (v : ValueHOL 64), Lb s.locals →
      Lb (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hres : ∀ m0 m : LocalsH, Lb m0 → Lfin m → Lfin (m.resVarEq (rn, m0.lookup rn)))
    {rest : ProgHOL 64}
    (hrest : ∀ v, P v → HoareG σ X (DI a Ar (120 * cnt.toNat)
      (fun m => Lb m ∧ m.lookup rn = some v) (fun _ _ _ _ => Φ)) rest
      (DQ a Ar (120 * cnt.toNat) Lfin (fun _ _ _ _ => Φ))) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) Lb (fun _ _ _ _ => Φ))
      (.decCall rn sh f args (.seq (auSt k (lv rn)) rest))
      (DQ a Ar (120 * cnt.toNat) Lfin (fun _ _ _ _ => Φ)) := by
  have hse := heapEnd_lt64
  refine hoareG_decCallP ha hf hps hlen hgw hgr
    (L' := fun v m => (Lb m ∧ m.lookup rn = some v) ∧ P v) (L2 := fun _ => Lfin) ?_ ?_
    (fun m0 m v hl h => hres m0 m hl h)
  · intro s st v hL hsh
    exact ⟨⟨hLbs s st v hL, lk_set_self _ _ _⟩, hP v hsh⟩
  · intro v
    refine hoareG_seqDQ (E := fun _ _ _ _ => Φ) (L := fun m => (Lb m ∧ m.lookup rn = some v) ∧ P v)
      ?_ ?_
    · unfold auSt
      refine hoareG_stDIN ha (by omega) ?_
      intro s hs ⟨⟨hL, hrv⟩, hPv⟩ w v' hw hv'
      obtain ⟨I, hI, haI⟩ := haddr _ hL
      rw [ev_au_addr haI] at hw
      cases hw
      rw [ev_lv] at hv'
      rw [hrv] at hv'
      cases hv'
      have hl := hlenP v hPv
      refine ⟨15 * I.toNat + k / 8, by omega, ?_⟩
      exact au_off Ar I k hk8 (by omega)
    · intro s hs hD hg
      exact hrest v (hD.1.2) s hs (di_mono (fun m h => ⟨h.1.1, h.1.2⟩) (fun _ _ _ _ h => h) hD) hg

/-! ## Predicates -/

def auKvB (arr cnt Ar I : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "lst", .rStruct [Wd arr, Wd cnt]), (nm "recs", Wd Ar), (nm "i", Wd I)]

def AuL (arr cnt Ar : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I, I.toNat ≤ cnt.toNat ∧ LV (auKvB arr cnt Ar I) m
def AuC (arr cnt Ar : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I, I.toNat < cnt.toNat ∧ LV (auKvB arr cnt Ar I) m
def AuA (arr cnt Ar : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I, I.toNat < cnt.toNat ∧ LV ((nm "a", Wd (Ar + I * BitVec.ofNat 64 120)) :: auKvB arr cnt Ar I) m
def AuW (arr cnt Ar : BitVec 64) (m : LocalsH) : Prop :=
  AuA arr cnt Ar m ∧ ∃ y, m.lookup (nm "w") = some (Wd y)

/-- The three names `AuL`/`AuC` mention; `AuN` adds `a`. -/
def AuN3 (x : MlS) : Prop := x ≠ nm "lst" ∧ x ≠ nm "recs" ∧ x ≠ nm "i"
def AuN (x : MlS) : Prop := AuN3 x ∧ x ≠ nm "a"

theorem kvB_names (arr cnt Ar I : BitVec 64) :
    ∀ q ∈ auKvB arr cnt Ar I, q.1 = nm "lst" ∨ q.1 = nm "recs" ∨ q.1 = nm "i" := by
  intro q hq
  simp only [auKvB, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl <;> simp

theorem kvB_ne {x : MlS} (hx : AuN3 x) (arr cnt Ar I : BitVec 64) : ∀ q ∈ auKvB arr cnt Ar I, q.1 ≠ x := by
  intro q hq e
  rcases kvB_names arr cnt Ar I q hq with h | h | h <;> rw [h] at e
  exacts [hx.1 e.symm, hx.2.1 e.symm, hx.2.2 e.symm]

theorem kvB_ne_a (arr cnt Ar I : BitVec 64) : ∀ q ∈ auKvB arr cnt Ar I, q.1 ≠ nm "a" := by
  intro q hq e
  rcases kvB_names arr cnt Ar I q hq with h | h | h <;> rw [h] at e <;> exact absurd e (by decide)

theorem kvA_ne {x : MlS} (hx : AuN x) (arr cnt Ar I : BitVec 64) :
    ∀ q ∈ (nm "a", Wd (Ar + I * BitVec.ofNat 64 120)) :: auKvB arr cnt Ar I, q.1 ≠ x := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact fun e => hx.2 e.symm
  · exact kvB_ne hx.1 arr cnt Ar I q hq

theorem auL_set {arr cnt Ar : BitVec 64} {s : State σ} {x : MlS} (hx : AuN3 x) (v : ValueHOL 64)
    (h : AuL arr cnt Ar s.locals) : AuL arr cnt Ar (setVarHOLFinite x v s).locals := by
  obtain ⟨I, hI, hl⟩ := h
  exact ⟨I, hI, lv_set hl (kvB_ne hx arr cnt Ar I) v⟩

theorem auL_res {arr cnt Ar : BitVec 64} {m : LocalsH} {x : MlS} (hx : AuN3 x)
    (o : Option (ValueHOL 64)) (h : AuL arr cnt Ar m) : AuL arr cnt Ar (m.resVarEq (x, o)) := by
  obtain ⟨I, hI, hl⟩ := h
  exact ⟨I, hI, lv_res hl (kvB_ne hx arr cnt Ar I) o⟩

theorem auC_set {arr cnt Ar : BitVec 64} {s : State σ} {x : MlS} (hx : AuN3 x) (v : ValueHOL 64)
    (h : AuC arr cnt Ar s.locals) : AuC arr cnt Ar (setVarHOLFinite x v s).locals := by
  obtain ⟨I, hI, hl⟩ := h
  exact ⟨I, hI, lv_set hl (kvB_ne hx arr cnt Ar I) v⟩

theorem auC_res {arr cnt Ar : BitVec 64} {m : LocalsH} {x : MlS} (hx : AuN3 x)
    (o : Option (ValueHOL 64)) (h : AuC arr cnt Ar m) : AuC arr cnt Ar (m.resVarEq (x, o)) := by
  obtain ⟨I, hI, hl⟩ := h
  exact ⟨I, hI, lv_res hl (kvB_ne hx arr cnt Ar I) o⟩

theorem auA_set {arr cnt Ar : BitVec 64} {s : State σ} {x : MlS} (hx : AuN x) (v : ValueHOL 64)
    (h : AuA arr cnt Ar s.locals) : AuA arr cnt Ar (setVarHOLFinite x v s).locals := by
  obtain ⟨I, hI, hl⟩ := h
  exact ⟨I, hI, lv_set hl (kvA_ne hx arr cnt Ar I) v⟩

/-! ## The loop body, from the end -/

def txwSig : Sig := ⟨[.any, .any, .any, .any], [], [], false⟩

structure AuCS {σ : Type} (X : Ctx 64) (a : Act σ) : Prop where
  rls : CSumm σ X a.Cb a.H (nm "rlp_list_to_slices") rlsSig []
  item : CSumm σ X a.Cb a.H (nm "rlp_item") rlsSig []
  u256 : CSumm σ X a.Cb a.H (nm "tx_scalar_u256") txfSig []
  fixed : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig []
  word : CSumm σ X a.Cb a.H (nm "tx_scalar_word") txwSig []

theorem flat4 {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) auSh4 = true) :
    (flattenHOL v).length = 4 := by
  have hh : shapeOfHOLExact v = shK 4 := (shapeEqHOL_eq_true _ _).mp h
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape hh
  match ws, hl with
  | [_, _, _, _], _ => simp [wv, flattenHOL]

theorem au_inc {a : Act σ} (ha : ActOK a X) {arr cnt Ar : BitVec 64} {Φ : Prop}
    {L0 : LocalsH → Prop} (hL0 : ∀ m, L0 m → AuA arr cnt Ar m) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) L0 (fun _ _ _ _ => Φ))
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  refine hoareG_assignDI ha.hH ?_
  intro s hs hL v hv
  obtain ⟨I, hI, hl⟩ := hL0 _ hL
  have hi : s.locals.lookup (nm "i") = some (Wd I) := hl (nm "i", Wd I) (by simp [auKvB])
  rw [ev_add2 (ev_lw hi) (ev_cw _ 1)] at hv
  cases hv
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    have hc := cnt.isLt
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
    rw [BitVec.toNat_add, h1]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨I + BitVec.ofNat 64 1, by omega, ?_⟩
  intro q hq
  simp only [auKvB, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl
  · rw [lk_set_ne _ _ (show nm "i" ≠ nm "lst" by decide)]
    exact hl (nm "lst", .rStruct [Wd arr, Wd cnt]) (by simp [auKvB])
  · rw [lk_set_ne _ _ (show nm "i" ≠ nm "recs" by decide)]
    exact hl (nm "recs", Wd Ar) (by simp [auKvB])
  · exact lk_set_self _ _ _

theorem aua_a {arr cnt Ar : BitVec 64} {m : LocalsH} (h : AuA arr cnt Ar m) :
    ∃ I : BitVec 64, I.toNat < cnt.toNat ∧
      m.lookup (nm "a") = some (Wd (Ar + I * BitVec.ofNat 64 120)) := by
  obtain ⟨I, hI, hl⟩ := h
  exact ⟨I, hI, hl (nm "a", Wd (Ar + I * BitVec.ofNat 64 120)) (by simp)⟩

theorem hoareG_preL {a : Act σ} {Ar : BitVec 64} {n : Nat} {L1 L2 : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ m, L1 m → L2 m)
    (hk : HoareG σ X (DI a Ar n L2 E) c Q) : HoareG σ X (DI a Ar n L1 E) c Q :=
  hoareG_pre hk (fun s _ hD => di_mono h (fun _ _ _ _ x => x) hD)

theorem au_s5 {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuA arr cnt Ar) (fun _ _ _ _ => Φ)) auS5
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auS5
  refine au_stage ha hcs.u256 (by simp [txfSig]) (by simp [txfSig, auU256]) (by simp [txfSig])
    (by simp [txfSig]) hbig 88 4 (by norm_num) (by norm_num) (fun v => (flattenHOL v).length = 4)
    (fun v h => flat4 h) (fun v h => h) (fun m h => aua_a h)
    (fun s st v h => auA_set (s := { st with locals := s.locals }) (by simp only [AuN, AuN3]; decide) v h)
    (fun m0 m h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2) ?_
  intro v hv
  exact au_inc ha (fun m h => h.1)

theorem valid_wordL {s : State σ} {x : MlS} {w : BitVec 64} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word w)))
    (h : isValidValueHOLExact s.toExact .local x v = true) : ∃ w', v = .val (.word w') := by
  have h1 := valid_local h hx
  exact val_of_shapeEq_one' (by simpa [shapeOfHOLExact] using h1)

theorem au_s4 {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuA arr cnt Ar) (fun _ _ _ _ => Φ)) auS4
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auS4
  refine au_stage ha hcs.u256 (by simp [txfSig]) (by simp [txfSig, auU256]) (by simp [txfSig])
    (by simp [txfSig]) hbig 56 4 (by norm_num) (by norm_num) (fun v => (flattenHOL v).length = 4)
    (fun v h => flat4 h) (fun v h => h) (fun m h => aua_a h)
    (fun s st v h => auA_set (s := { st with locals := s.locals }) (by simp only [AuN, AuN3]; decide) v h)
    (fun m0 m h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2) ?_
  intro v hv
  exact hoareG_preL (fun m h => h.1) (au_s5 ha hcs hbig)

theorem au_st_w {a : Act σ} (ha : ActOK a X) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) (k : Nat) (hk8 : k % 8 = 0) (hk : k + 8 ≤ 120) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuW arr cnt Ar) (fun _ _ _ _ => Φ)) (auSt k (lv (nm "w")))
      (DQ a Ar (120 * cnt.toNat) (AuW arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  have hse := heapEnd_lt64
  unfold auSt
  refine hoareG_stDIN ha (by omega) ?_
  intro s hs ⟨hA, y, hy⟩ w v' hw hv'
  obtain ⟨I, hI, haI⟩ := aua_a hA
  rw [ev_au_addr haI] at hw
  cases hw
  rw [ev_lv, hy] at hv'
  cases hv'
  refine ⟨15 * I.toNat + k / 8, by simp [Wd, flattenHOL]; omega, ?_⟩
  exact au_off Ar I k hk8 (by omega)

theorem au_s3 {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuW arr cnt Ar) (fun _ _ _ _ => Φ)) auS3
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auS3
  refine hoareG_seqDQ (L := AuW arr cnt Ar) (E := fun _ _ _ _ => Φ)
    (hoareG_callAP ha hcs.word (by simp [txwSig]) (by simp [txwSig]) (by simp [txwSig])
      (by simp [txwSig]) ?_) ?_
  · intro s v ⟨hA, y, hy⟩ hval
    obtain ⟨y', rfl⟩ := valid_wordL hy hval
    exact ⟨auA_set (by simp only [AuN, AuN3]; decide) _ hA, y', lk_set_self _ _ _⟩
  · refine hoareG_seqDQ (L := AuW arr cnt Ar) (E := fun _ _ _ _ => Φ)
      (au_st_w ha hbig 48 (by norm_num) (by norm_num)) ?_
    exact hoareG_preL (fun m h => h.1) (au_s4 ha hcs hbig)

theorem au_s2 {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuA arr cnt Ar) (fun _ _ _ _ => Φ)) auS2
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auS2
  refine au_stage ha hcs.word (by simp [txwSig]) (by simp [txwSig]) (by simp [txwSig])
    (by simp [txwSig]) hbig 40 1 (by norm_num) (by norm_num) (fun v => ∃ y, v = Wd y)
    (fun v h => by obtain ⟨y, rfl⟩ := val_of_shapeEq_one' h; exact ⟨y, rfl⟩)
    (fun v ⟨y, hy⟩ => by subst hy; simp [Wd, flattenHOL]) (fun m h => aua_a h)
    (fun s st v h => auA_set (s := { st with locals := s.locals }) (by simp only [AuN, AuN3]; decide) v h)
    (fun m0 m h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2) ?_
  intro v ⟨y, hy⟩
  subst hy
  exact hoareG_preL (fun m h => ⟨h.1, y, h.2⟩) (au_s3 ha hcs hbig)

theorem au_s1 {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuA arr cnt Ar) (fun _ _ _ _ => Φ)) auS1
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auS1
  refine au_stage ha hcs.fixed (by simp [txfSig]) (by simp [txfSig]) (by simp [txfSig])
    (by simp [txfSig]) hbig 32 1 (by norm_num) (by norm_num) (fun v => ∃ y, v = Wd y)
    (fun v h => by obtain ⟨y, rfl⟩ := val_of_shapeEq_one' h; exact ⟨y, rfl⟩)
    (fun v ⟨y, hy⟩ => by subst hy; simp [Wd, flattenHOL]) (fun m h => aua_a h)
    (fun s st v h => auA_set (s := { st with locals := s.locals }) (by simp only [AuN, AuN3]; decide) v h)
    (fun m0 m h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2) ?_
  intro v hv
  exact hoareG_preL (fun m h => h.1) (au_s2 ha hcs hbig)

theorem au_s0 {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuA arr cnt Ar) (fun _ _ _ _ => Φ)) auS0
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auS0
  refine au_stage ha hcs.u256 (by simp [txfSig]) (by simp [txfSig, auU256]) (by simp [txfSig])
    (by simp [txfSig]) hbig 0 4 (by norm_num) (by norm_num) (fun v => (flattenHOL v).length = 4)
    (fun v h => flat4 h) (fun v h => h) (fun m h => aua_a h)
    (fun s st v h => auA_set (s := { st with locals := s.locals }) (by simp only [AuN, AuN3]; decide) v h)
    (fun m0 m h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2) ?_
  intro v hv
  exact hoareG_preL (fun m h => h.1) (au_s1 ha hcs hbig)

theorem au_sa {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuC arr cnt Ar) (fun _ _ _ _ => Φ)) auSa
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auSa
  refine hoareG_decDQ ha.hH (L' := AuA arr cnt Ar) (L2 := AuL arr cnt Ar) ?_
    (au_s0 ha hcs hbig) (fun m0 m hl h => auL_res (by simp only [AuN3]; decide) _ h)
  intro s hs ⟨I, hI, hl⟩ v hv
  rw [ev_add2 (ev_lw (hl (nm "recs", Wd Ar) (by simp [auKvB])))
    (ev_mul2 (ev_lw (hl (nm "i", Wd I) (by simp [auKvB]))) (ev_cw _ 120))] at hv
  cases hv
  refine ⟨I, hI, ?_⟩
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact lk_set_self _ _ _
  · exact lv_set hl (kvB_ne_a arr cnt Ar I) _ q hq

theorem au_ent {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuC arr cnt Ar) (fun _ _ _ _ => Φ)) auEnt
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auEnt
  refine hoareG_decCallP ha hcs.rls (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) (L' := fun _ => AuC arr cnt Ar) (L2 := fun _ => AuL arr cnt Ar) ?_ ?_
    (fun m0 m v h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2)
  · intro s st v hL hsh
    exact auC_set (s := { st with locals := s.locals }) (by simp only [AuN3]; decide) v hL
  · intro v
    exact hoareG_seqDQ (L := AuC arr cnt Ar) (hoareG_guardDI ha.hH) (au_sa ha hcs hbig)

theorem au_loop {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuC arr cnt Ar) (fun _ _ _ _ => Φ)) auLoop
      (DQ a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auLoop
  refine hoareG_decCallP ha hcs.item (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig])
    (by simp [rlsSig]) (L' := fun _ => AuC arr cnt Ar) (L2 := fun _ => AuL arr cnt Ar) ?_ ?_
    (fun m0 m v h1 h2 => auL_res (by simp only [AuN3]; decide) _ h2)
  · intro s st v hL hsh
    exact auC_set (s := { st with locals := s.locals }) (by simp only [AuN3]; decide) v hL
  · intro v
    exact hoareG_seqDQ (L := AuC arr cnt Ar) (hoareG_guardDI ha.hH) (au_ent ha hcs hbig)

def AuLx (arr cnt Ar : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "lst") = some (.rStruct [Wd arr, Wd cnt]) ∧ m.lookup (nm "recs") = some (Wd Ar)

theorem au_while {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) {arr cnt Ar : BitVec 64} {Φ : Prop}
    (hbig : Ar.toNat + 120 * cnt.toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuL arr cnt Ar) (fun _ _ _ _ => Φ)) auWhile
      (DQ a Ar (120 * cnt.toNat) (AuLx arr cnt Ar) (fun _ _ _ _ => Φ)) := by
  unfold auWhile
  refine hoareG_whileDI ha.hH (Lx := AuLx arr cnt Ar) ?_ ?_
  · refine hoareG_pre (au_loop ha hcs hbig) ?_
    intro s hs ⟨hD, hc⟩
    obtain ⟨⟨I, hI, hl⟩, rest⟩ := hD
    have hlt := lower_true (cmp_true (ev_lw (hl (nm "i", Wd I) (by simp [auKvB])))
      (ev_bhCnt (hl (nm "lst", .rStruct [Wd arr, Wd cnt]) (by simp [auKvB]))) hc)
    exact ⟨⟨I, hlt, hl⟩, rest⟩
  · intro s hs hD hc
    exact di_mono (fun m ⟨I, _, hl⟩ => ⟨hl (nm "lst", .rStruct [Wd arr, Wd cnt]) (by simp [auKvB]),
      hl (nm "recs", Wd Ar) (by simp [auKvB])⟩)
      (fun _ _ _ _ h => h) hD

/-- The adoption lemma for the authorization records: no hook row, so the hook is trivial. -/
theorem wf_auth {σ : Type} {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = Types.tAUTH) :
    (Hooks.guestHooksR (σ := σ)).wf Γ s o := by
  refine Hooks.recHooks_guestR.make Γ s o (by rw [ht]; exact Hooks.recTy_tAUTH) fun e he het => ?_
  have hm := Hooks.recTab_ty he
  rw [het, ht] at hm
  exact absurd hm (by decide)

/-- The value fact exported by the summary. -/
def AuQ (N : BitVec 64) (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∀ recs cnt : BitVec 64, v = .rStruct [Wd recs, Wd cnt] →
    cnt.toNat ≤ N.toNat ∧ Hooks.SubArr Γ' recs cnt.toNat Types.tAUTH 120

theorem au_ret {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC) (hH : a.H = Hooks.guestHooksR)
    (hgr : a.sg.grows = true) (hret : a.sg.ret = []) {arr cnt Ar N : BitVec 64}
    (hcn : cnt.toNat ≤ N.toNat) (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 120 * cnt.toNat ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuLx arr cnt Ar) (fun _ _ _ _ => True)) auRet
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AuQ N Γ' v)) := by
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  unfold auRet
  refine hoareG_return fun t hs' ⟨⟨h1, h2⟩, Γ, q, he, hh, hB, hn, hE⟩ v hv => ?_
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  rw [evs_cons (ev_lw h2) (evs_cons (ev_bhCnt h1) evs_nil)] at hvs
  cases hvs
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  have hRet : ∀ Γ' p', RetOK Γ' a.p0 p' a.vs a.sg.ret (.rStruct [Wd Ar, Wd cnt]) :=
    fun Γ' p' i r w hr _ => by rw [hret] at hr; simp at hr
  by_cases hc0 : cnt.toNat = 0
  · refine ⟨Γ, q, he, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh, fun v' hv' => ?_⟩
    cases hv'
    refine ⟨hRet _ _, fun recs cnt' hv'' => ?_⟩
    simp only [Wd, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv''
    obtain ⟨-, rfl⟩ := hv''
    exact ⟨hcn, Or.inl hc0⟩
  · have hreg : (a.C.ty Types.tAUTH).region = .heap := by rw [hC]; exact Hooks.auth_heap
    have hprot : ∀ k, (a.C.ty Types.tAUTH).slot k = .prot := by rw [hC]; exact Hooks.auth_prot
    have hnt : a.C.tags.lookup Types.tAUTH = none := by
      rw [hC]; exact Types.recIds_untagged Types.tAUTH (by simp)
    have hmin : (a.C.ty Types.tAUTH).minSz ≤ 120 * cnt.toNat := by
      rw [hC]
      have h1 := Types.recIds_minSz.2.2.1
      omega
    obtain ⟨hExt, hh2⟩ := Rec.heap_adopt ha hMono he hh (Ar := Ar) (n := 120 * cnt.toNat)
      (ty := Types.tAUTH) hreg hprot hnt (by omega) (by omega) hmin hs hA8 hB hn hgr
      (fun hLn => by rw [hH]; exact wf_auth rfl)
    refine ⟨_, q, hExt, heap_congr (s := t) ha.hH rfl rfl rfl rfl hh2, fun v' hv' => ?_⟩
    cases hv'
    refine ⟨hRet _ _, fun recs cnt' hv'' => ?_⟩
    simp only [Wd, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hv''
    obtain ⟨rfl, rfl⟩ := hv''
    exact ⟨hcn, Or.inr ⟨⟨Ar, Types.tAUTH, 120 * cnt.toNat⟩,
      List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl, le_rfl, hs.2⟩⟩

theorem au_rest {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    {arr cnt Ar N : BitVec 64} (hcn : cnt.toNat ≤ N.toNat)
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 120 * cnt.toNat ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0) :
    HoareG σ X (DI a Ar (120 * cnt.toNat) (AuLx arr cnt Ar) (fun _ _ _ _ => True)) auRest
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AuQ N Γ' v)) := by
  unfold auRest
  refine hoareG_decDI ha.hH (L' := AuL arr cnt Ar) ?_ ?_
  · intro s hs' ⟨h1, h2⟩ v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨BitVec.ofNat 64 0, by simp, ?_⟩
    intro q hq
    simp only [auKvB, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl
    · rw [lk_set_ne _ _ (show nm "i" ≠ nm "lst" by decide)]; exact h1
    · rw [lk_set_ne _ _ (show nm "i" ≠ nm "recs" by decide)]; exact h2
    · exact lk_set_self _ _ _
  · exact hoareG_seqDI (au_while ha hcs hs.2) (au_ret ha hC hH hgr hret hcn hs hA8)

/-! ## The allocation, the first call, the summary -/

theorem au_B {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    (hAS : AllocSpec σ X (nm "alloc") .heap) (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    {arr cnt N : BitVec 64} (hcn : cnt.toNat ≤ N.toNat) (hN : N.toNat ≤ heapEnd) :
    HoareG σ X (DI a 0 0 (fun m => m.lookup (nm "lst") = some (.rStruct [Wd arr, Wd cnt]))
      (fun _ _ _ _ => cnt.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd)) auAlloc
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AuQ N Γ' v)) := by
  have hse : heapEnd = 2952790016 := rfl
  have hSZ : (cnt * BitVec.ofNat 64 120).toNat = 120 * cnt.toNat := by
    rw [BitVec.toNat_mul]
    have : cnt.toNat * (BitVec.ofNat 64 120).toNat < 2 ^ 64 := by
      show cnt.toNat * 120 < 2 ^ 64
      omega
    rw [Nat.mod_eq_of_lt this]; show cnt.toNat * 120 = 120 * cnt.toNat; omega
  unfold auAlloc
  refine hoareG_pre (P := PreH a (fun m => m.lookup (nm "lst") =
    some (.rStruct [Wd arr, Wd cnt]) ∧ (cnt.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd))) ?_
    (fun s hs ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ => ⟨⟨hL, hE⟩, Γ, q, he, hh⟩)
  refine Node.hoareG_allocN ha hAS halloc (SZ := cnt * BitVec.ofNat 64 120)
    (L' := fun Ar m => (m.lookup (nm "lst") = some (.rStruct [Wd arr, Wd cnt]) ∧
      m.lookup (nm "recs") = some (Wd Ar)) ∧ (cnt.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd))
    (fun s _ hL => ev_mul2 (ev_bhCnt hL.1) (ev_cw _ 120)) ?_ ?_
  · intro s st Ar hL
    refine ⟨⟨?_, lk_set_self _ _ _⟩, hL.2⟩
    rw [lk_set_ne _ _ (by decide)]; exact hL.1
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    rw [hSZ] at hs2
    refine hoareG_pre (P := DI a Ar (120 * cnt.toNat) (AuLx arr cnt Ar) (fun _ _ _ _ => True))
      (au_rest ha hcs hC hH hgr hret hcn ⟨hs1, hs2⟩ hs3) ?_
    intro t _ ⟨hL, Γ, q, he, hh, hF, hn⟩
    rw [hSZ] at hF hn
    exact ⟨hL.1, Γ, q, he, hh, hF, hn, trivial⟩

theorem au_A {a : Act σ} (ha : ActOK a X) (hcs : AuCS X a) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true) (hret : a.sg.ret = [])
    (hAS : AllocSpec σ X (nm "alloc") .heap) (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    (hLoc : FreshFoot σ X (nm "rlp_list_to_slices") SlPre TlQ) {P N : BitVec 64} :
    HoareG σ X (DI a 0 0 (LK [(nm "p", P), (nm "len", N)])
      (fun _ _ _ _ => heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)) auBody
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AuQ N Γ' v)) := by
  have hse := heapEnd_lt64
  unfold auBody
  have hp0 := ha.hord0
  refine hoareG_decCallDI (E := fun _ _ _ _ => heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)
    (L := LK [(nm "p", P), (nm "len", N)])
    (L' := fun v m => ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] ∧
      m.lookup (nm "lst") = some v)
    (E' := fun v _ _ _ _ => ∃ x y : BitVec 64, v = .rStruct [.val (.word x), .val (.word y)] ∧
      y.toNat ≤ N.toNat ∧ N.toNat ≤ heapEnd)
    ha hcs.rls hLoc (by simp [rlsSig]) (by simp [rlsSig]) (by simp [rlsSig]) ?_ ?_ ?_ ?_
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
    exact au_B ha hcs hC hH hgr hret hAS halloc hcn hN s hs ⟨hL, Γ, q, he, hh, hB, hn, hcn, hN⟩ hg

def auSig : Sig := ⟨[.any, .any], [], [], true⟩

def AuRx (vs : List (ValueHOL 64)) (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∀ P N : BitVec 64, vs = [Wd P, Wd N] → AuQ N Γ' v

set_option maxHeartbeats 0 in
theorem sumSpecA_decode_authorizations
    (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_authorizations") auSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → AuRx vs Γ' v) := by
  have hX := hF.hX
  have hrls : CSumm σ X Types.guestC Hooks.guestHooksR (nm "rlp_list_to_slices") rlsSig [] :=
    ctab% htab
  have hitem : CSumm σ X Types.guestC Hooks.guestHooksR (nm "rlp_item") rlsSig [] :=
    ctab% htab
  have hu256 : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_scalar_u256") txfSig [] :=
    ctab% htab
  have hfix : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_fixed_bytes") txfSig [] :=
    ctab% htab
  have hword : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_scalar_word") txwSig [] :=
    ctab% htab
  have halloc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine sumSpecA_of_heapQG hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_authorizations
    (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, p, hp, hPL⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  rw [hh.2.1] at hp
  cases hp
  set a := actOf Types.guestC Hooks.guestHooksR auSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0
    with hadef
  have haC : a.Cb = Types.guestC := rfl
  have hC : a.C = Types.guestC := rfl
  have hH : a.H = Hooks.guestHooksR := rfl
  have hgr : a.sg.grows = true := rfl
  have hret : a.sg.ret = [] := rfl
  rw [← haC] at hrls hitem hu256 hfix hword halloc
  rw [← hH] at hrls hitem hu256 hfix hword halloc
  refine hoareG_conseq (P := DI a 0 0 (LK [(nm "p", Pv), (nm "len", Lv)])
    (fun _ _ _ _ => heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ a.p0.hp))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ AuQ Lv Γ' v)) ?_ ?_ ?_
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
    obtain ⟨-, rfl⟩ := hvs
    exact (hv v hv').2
  exact au_A ha ⟨hrls, hitem, hu256, hfix, hword⟩ hC hH hgr hret hAS halloc
    (freshFoot_rlp_list_to_slices_tile hX)

/-- **`decode_authorizations` at the challenge context and `guestHooksR`.** -/
theorem sumSpecA_decode_authorizations_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_authorizations") auSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → AuRx vs Γ' v) :=
  sumSpecA_decode_authorizations foldOK_guestR tab26_guestR

/-- **`decode_blob_hashes` at the challenge context and `guestHooksR`.** -/
theorem sumSpecA_decode_blob_hashes_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_blob_hashes") bhSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r _ _ => ∀ v, r = .returned v → BhRx vs v) :=
  sumSpecA_decode_blob_hashes foldOK_guestR tab26_guestR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_authorizations
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_authorizations_guestR
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_blob_hashes_guestR
