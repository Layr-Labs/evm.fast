import InitECandidate.Solver.MemSafe.WaveHelpers.Sha256
import InitECandidate.Solver.MemSafe.WaveHelpers.FeLoop
import InitECandidate.Solver.MemSafe.WaveHelpers.Slices
import InitECandidate.Solver.MemSafe.WaveHelpers.BitLen
import InitECandidate.Solver.Spec.TrieWalk

set_option autoImplicit false

/-!
# `decode_account_from_leaf`: the capability summary (ms-integ)

```
fun 1 decode_account_from_leaf(1 p, 1 n, 1 acct_out) {
  var {1,1,1,1} it = <0,0,0,0>; var e = 0;
  try it = rlp_decode_fully(p, n) catch RlpErr => e { mpt_fail(20); }
  if it.0 != 1 { mpt_fail(20); }
  var {1,1} sl = rlp_list_to_slices(it.1, it.2); if sl.1 != 4 { mpt_fail(20); }
  var arr = sl.0; var f0..f3 = rlp_item(arr[k].ptr, arr[k].len);
  if (f0.0|f1.0|f2.0|f3.0) != 0 { mpt_fail(20); }   if f0.2 >+ 8 { mpt_fail(21); }
  var nonce = 0; var i = 0; while i <+ f0.2 { nonce = (nonce << 8) | ld8 (f0.1 + i); i = i + 1; }
  st acct_out + 0, nonce;
  if f1.2 >+ 32 { mpt_fail(22); }                       // f1.2 ≤ 32 from here on
  memzero(acct_out + 8, 32); i = 0;
  while i <+ f1.2 { var pos = f1.2 - 1 - i; var lp = acct_out + 8 + (pos >>> 3) * 8;
                    st lp, lds lp | (ld8 (f1.1 + i) << ((pos & 7) * 8)); i = i + 1; }
  if f2.2 == 0 { st acct_out + 40, empty_trie_root; } else { if f2.2 != 32 { mpt_fail(23); } st acct_out + 40, f2.1; }
  if f3.2 == 0 { st acct_out + 48, empty_code_hash; } else { if f3.2 != 32 { mpt_fail(24); } st acct_out + 48, f3.1; }
  return 0; }
```

The checker rejects the second loop's store (`pos` is bounded only through the guard
`f1.2 ≤ 32`, which needs `mpt_fail` never to return). `csumm_decode_account_from_leaf`: the
summary for `⟨[.any, .any, .buf n], [], [], g⟩` (`56 ≤ n`), given the summaries of
`rlp_decode_fully`, `mpt_fail`, `rlp_list_to_slices`, `rlp_item` and `memzero`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Integ
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def dsh4 : ShapeHOL := .comb [.one, .one, .one, .one]

def daLd (k : Nat) : ExpHOL 64 :=
  .load .one (.op .add [lv (nm "arr"), .panop .mul [cw k, cw 16]])

def daLd8 (k : Nat) : ExpHOL 64 :=
  .load .one (.op .add [lv (nm "arr"), .panop .mul [cw k, cw 16], cw 8])

def daW1 : ProgHOL 64 :=
  .seq (.assign .local (nm "nonce") (.op .or [.shift .lsl (lv (nm "nonce")) (cw 8),
      .loadByte (.op .add [.rfield 1 (lv (nm "f0")), lv (nm "i")])]))
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def daW2 : ProgHOL 64 :=
  .dec (nm "pos") .one (.op .sub [.op .sub [.rfield 2 (lv (nm "f1")), cw 1], lv (nm "i")])
    (.dec (nm "lp") .one (.op .add [lv (nm "acct_out"), cw 8,
        .panop .mul [.shift .lsr (lv (nm "pos")) (cw 3), cw 8]])
      (.seq (.store (lv (nm "lp")) (.op .or [.load .one (lv (nm "lp")),
          .shift .lsl (.loadByte (.op .add [.rfield 1 (lv (nm "f1")), lv (nm "i")]))
            (.panop .mul [.op .and [lv (nm "pos"), cw 7], cw 8])]))
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))

/-- `if fk.2 == 0 { st acct_out + o, g; } else { if fk.2 != 32 { mpt_fail(c); } st acct_out + o, fk.1; }` -/
def daFld (f g : MlS) (o c : Nat) : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 2 (lv f)) (cw 0))
    (.store (.op .add [lv (nm "acct_out"), cw o]) (.var .global g))
    (.seq (.ite (.cmp .notEqual (.rfield 2 (lv f)) (cw 32)) (callD (nm "mpt_fail") [cw c]) .skip)
      (.store (.op .add [lv (nm "acct_out"), cw o]) (.rfield 1 (lv f))))

/-- From `memzero(acct_out + 8, 32)` on. -/
def daTail : ProgHOL 64 :=
  .seq (callD (nm "memzero") [.op .add [lv (nm "acct_out"), cw 8], cw 32])
    (.seq (.assign .local (nm "i") (cw 0))
      (.seq (.while (.cmp .lower (lv (nm "i")) (.rfield 2 (lv (nm "f1")))) daW2)
        (.seq (daFld (nm "f2") (nm "empty_trie_root") 40 23)
          (.seq (daFld (nm "f3") (nm "empty_code_hash") 48 24) (.return (cw 0))))))

/-- After the four items. -/
def daMid : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.op .or [.rfield 0 (lv (nm "f0")), .rfield 0 (lv (nm "f1")),
      .rfield 0 (lv (nm "f2")), .rfield 0 (lv (nm "f3"))]) (cw 0))
      (callD (nm "mpt_fail") [cw 20]) .skip)
    (.seq (.ite (.cmp .lower (cw 8) (.rfield 2 (lv (nm "f0")))) (callD (nm "mpt_fail") [cw 21]) .skip)
      (.dec (nm "nonce") .one (cw 0) (.dec (nm "i") .one (cw 0)
        (.seq (.while (.cmp .lower (lv (nm "i")) (.rfield 2 (lv (nm "f0")))) daW1)
          (.seq (.store (.op .add [lv (nm "acct_out"), cw 0]) (lv (nm "nonce")))
            (.seq (.ite (.cmp .lower (cw 32) (.rfield 2 (lv (nm "f1"))))
                (callD (nm "mpt_fail") [cw 22]) .skip)
              daTail))))))

def daItems : ProgHOL 64 :=
  .decCall (nm "f0") dsh4 (nm "rlp_item") [daLd 0, daLd8 0]
    (.decCall (nm "f1") dsh4 (nm "rlp_item") [daLd 1, daLd8 1]
      (.decCall (nm "f2") dsh4 (nm "rlp_item") [daLd 2, daLd8 2]
        (.decCall (nm "f3") dsh4 (nm "rlp_item") [daLd 3, daLd8 3] daMid)))

def daTry : ProgHOL 64 :=
  .call (some (some (.local, nm "it"), some (nm "RlpErr", nm "e", callD (nm "mpt_fail") [cw 20])))
    (nm "rlp_decode_fully") [lv (nm "p"), lv (nm "n")]

def daBody : ProgHOL 64 :=
  .dec (nm "it") dsh4 (.rstruct [cw 0, cw 0, cw 0, cw 0])
    (.dec (nm "e") .one (cw 0)
      (.seq daTry
        (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "it"))) (cw 1)) (callD (nm "mpt_fail") [cw 20]) .skip)
          (.decCall (nm "sl") (.comb [.one, .one]) (nm "rlp_list_to_slices")
              [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))]
            (.seq (.ite (.cmp .notEqual (.rfield 1 (lv (nm "sl"))) (cw 4)) (callD (nm "mpt_fail") [cw 20]) .skip)
              (.dec (nm "arr") .one (.rfield 0 (lv (nm "sl"))) daItems))))))

def daParams : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one), (nm "acct_out", .one)]


/-! ## Statement rules -/

/-- A one-word store into a buffer cell of the current state that is in the footprint. -/
theorem hoareG_stwBufSP {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) → w.toNat % 8 = 0 →
        (SCell a.Cb Γ w ∨ ¬ InObj Γ w.toNat) ∧ a.Foot w)
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ v, ev s ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (PreH a L) (.store ea ev') (SPA a L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh⟩ w v mem hw hv hst => ?_
  obtain ⟨x, hx⟩ := hval s hs hL Γ p he hh v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst
  have hc := haddr s hs hL Γ p he hh w hw (ha.hal w (hs.2.1 ▸ hdom))
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_buf ha hh hm (fun y hy => hy ▸ hc.1)
    (fun y hy => hy ▸ hc.2)⟩, fun r' h => absurd h (by simp)⟩

/-- A call to a capability-summary callee that never returns normally: any locals post. -/
theorem hoareG_failSP {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hnr : FunRet σ X f (fun _ _ => False))
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L L' : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x) :
    HoareG σ X (PreH a L) (.call (some (none, none)) f args) (SPA a L') := by
  refine hoareG_callD ((summ_funSpec hf).and (funSpec_of_funRet hnr)) ?_ ?_
  · intro s _ _ vs _ callee v st ⟨_, hR⟩ _
    exact (hR v rfl).elim
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- `try x = f(args) catch eid => hv { hp }` for a capability-summary callee, with a locals
invariant that survives binding `x` and `hv`. -/
theorem hoareG_tryCallSP {a : Act σ} (ha : ActOK a X) {f x eid hv : MlS} {hp : ProgHOL 64}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (hLx : ∀ (s : State σ) v, L s.locals → L (setVarHOLFinite x v s).locals)
    (hLh : ∀ (s : State σ) v, L s.locals → L (setVarHOLFinite hv v s).locals)
    (heid : eid ≠ trapErr) (hh : HoareG σ X (PreH a L) hp (SPA a L)) :
    HoareG σ X (PreH a L) (.call (some (some (.local, x), some (eid, hv, hp))) f args) (SPA a L) := by
  refine hoareG_callH (summ_funSpec hf) ?_ ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh0⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh0 vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh0 hR (by simp [Good]) (by simp [Abortive]) hA hF
      hgw hgr
    refine ⟨fun h => absurd h (by simp), fun k x' hk _ => ?_⟩
    simp only [Option.some.injEq, Prod.mk.injEq] at hk
    obtain ⟨rfl, rfl⟩ := hk
    exact ⟨fun _ => ⟨hLx { st with locals := s.locals } v hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh0⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh0 vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh0 hR (by simp [Good]) (by simpa [Abortive] using heid)
      hA hF hgw hgr
    refine hoareG_pre hh fun t _ ht => ?_
    subst ht
    exact ⟨hLh { st with locals := s.locals } v hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩
  · intro s hs ⟨hL, Γ, p, he, hh0⟩ vs hvs callee r st hR _ habn _
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh0 vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh0 hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- A pure fact in the locals invariant. -/
theorem hoareG_pureH {a : Act σ} {L : LocalsH → Prop} {P : Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : P → HoareG σ X (PreH a L) p Q) : HoareG σ X (PreH a (fun m => L m ∧ P)) p Q :=
  fun s hs ⟨⟨hL, hP⟩, hH'⟩ => h hP s hs ⟨hL, hH'⟩

/-- A typed global evaluates to a word. -/
theorem ev_glob_word {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {g : MlS} {k : FK} (hk : a.Cb.GT.lookup g = some k) {v : ValueHOL 64}
    (hv : ev s (.var .global g) = some v) : ∃ w, v = .val (.word w) := by
  obtain ⟨p1, -, -, -, -, -, hGl, -⟩ := heap_G ha hh
  obtain ⟨w, hw, -⟩ := hGl g k hk
  have := AllocImpl.lookup_of_gword hw
  rw [ev_gv, this] at hv
  exact ⟨w, (Option.some.inj hv).symm⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_account_from_leaf : fnEntry Guest.Software.guestFn_decode_account_from_leaf =
    (nm "decode_account_from_leaf", daParams, daBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_account_from_leaf :
    guestCode (nm "decode_account_from_leaf") = some (daParams, daBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 293) (by decide)) ⟨_, rfl⟩
    entry_decode_account_from_leaf

/-! ## Generic pieces -/

/-- Arguments for a signature without buffer or typed parameters. -/
theorem anyArgs {a : Act σ} {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any) {args : List (ExpHOL 64)}
    (hl : ps.length = args.length) {L : LocalsH → Prop} :
    ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p ps vs ∧ ∀ x, ArgCells ps vs x → a.Foot x :=
  fun s _ _ Γ p _ _ vs hvs =>
    ⟨argsOK_any hps (by rw [hl, evs_length hvs]), fun x hx => absurd hx (argCells_any hps)⟩

/-- A `while` loop whose body keeps `SPA a L`. -/
theorem hoareG_whileSP {a : Act σ} (hH : HooksLawful a.C a.H) {L : LocalsH → Prop}
    {c : ExpHOL 64} {body : ProgHOL 64}
    (hb : HoareG σ X (fun s => PreH a L s ∧ CondTrue s c) body (SPA a L)) :
    HoareG σ X (PreH a L) (.while c body) (SPA a L) := by
  refine hoareG_while (fun t h => ⟨h.1, hha_congr (s := t) hH rfl rfl rfl rfl h.2⟩) ?_ ?_
  · refine hoareG_conseq hb (fun _ _ h => h) ?_
    intro r t _ _ h
    refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
    · exact absurd rfl (abn_nb' (h.2 _ hc).1).2
    · exact absurd rfl (abn_nb' (h.2 _ hb).1).1
    · rw [hr'] at h'; cases h'
  · intro s _ h _
    exact ⟨fun _ => h, fun r' h => absurd h (by simp)⟩

/-! ## Locals -/

def w4v (w : BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) : ValueHOL 64 :=
  wv [w.1, w.2.1, w.2.2.1, w.2.2.2]

def IsW4 (m : LocalsH) (x : MlS) : Prop := ∃ ws : List (BitVec 64), m.lookup x = some (wv ws) ∧ ws.length = 4

def DL (A : BitVec 64) (m : LocalsH) : Prop := m.lookup (nm "acct_out") = some (.val (.word A))

def DL1 (A : BitVec 64) (w : BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) (m : LocalsH) : Prop :=
  DL A m ∧ m.lookup (nm "f1") = some (w4v w)

def DL2 (A : BitVec 64) (w : BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) (m : LocalsH) : Prop :=
  DL1 A w m ∧ IsW4 m (nm "f2")

def DLF (A : BitVec 64) (w : BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) (m : LocalsH) : Prop :=
  DL2 A w m ∧ IsW4 m (nm "f3")

def DLN (A : BitVec 64) (w : BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) (m : LocalsH) : Prop :=
  DLF A w m ∧ ∃ x : BitVec 64, m.lookup (nm "nonce") = some (.val (.word x))

theorem isW4_sv {s : State σ} {x y : MlS} (h : IsW4 s.locals x) (hne : y ≠ x) (v : ValueHOL 64) :
    IsW4 (setVarHOLFinite y v s).locals x := by
  obtain ⟨ws, h1, h2⟩ := h
  exact ⟨ws, by rw [lk_set_ne _ _ hne]; exact h1, h2⟩

theorem isW4_res {m : LocalsH} {x y : MlS} (h : IsW4 m x) (hne : y ≠ x) (old : Option (ValueHOL 64)) :
    IsW4 (m.resVarEq (y, old)) x := by
  obtain ⟨ws, h1, h2⟩ := h
  exact ⟨ws, by rw [lookup_resVarEq_ne _ _ hne]; exact h1, h2⟩

theorem dl_sv {A : BitVec 64} {s : State σ} (h : DL A s.locals) {x : MlS} (h1 : x ≠ nm "acct_out")
    (v : ValueHOL 64) : DL A (setVarHOLFinite x v s).locals := by
  unfold DL; rw [lk_set_ne _ _ h1]; exact h

theorem dl_res {A : BitVec 64} {m : LocalsH} (h : DL A m) {x : MlS} (h1 : x ≠ nm "acct_out")
    (old : Option (ValueHOL 64)) : DL A (m.resVarEq (x, old)) := by
  unfold DL; rw [lookup_resVarEq_ne _ _ h1]; exact h

theorem dl1_sv {A : BitVec 64} {w} {s : State σ} (h : DL1 A w s.locals) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f1") (v : ValueHOL 64) :
    DL1 A w (setVarHOLFinite x v s).locals :=
  ⟨dl_sv h.1 h1 v, by rw [lk_set_ne _ _ h2]; exact h.2⟩

theorem dl2_sv {A : BitVec 64} {w} {s : State σ} (h : DL2 A w s.locals) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f1") (h3 : x ≠ nm "f2") (v : ValueHOL 64) :
    DL2 A w (setVarHOLFinite x v s).locals :=
  ⟨dl1_sv h.1 h1 h2 v, isW4_sv h.2 h3 v⟩

theorem dlf_sv {A : BitVec 64} {w} {s : State σ} (h : DLF A w s.locals) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f1") (h3 : x ≠ nm "f2") (h4 : x ≠ nm "f3")
    (v : ValueHOL 64) : DLF A w (setVarHOLFinite x v s).locals :=
  ⟨dl2_sv h.1 h1 h2 h3 v, isW4_sv h.2 h4 v⟩

theorem dln_sv {A : BitVec 64} {w} {s : State σ} (h : DLN A w s.locals) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f1") (h3 : x ≠ nm "f2") (h4 : x ≠ nm "f3")
    (h5 : x ≠ nm "nonce") (v : ValueHOL 64) : DLN A w (setVarHOLFinite x v s).locals := by
  obtain ⟨hf, y, hy⟩ := h
  exact ⟨dlf_sv hf h1 h2 h3 h4 v, y, by rw [lk_set_ne _ _ h5]; exact hy⟩

theorem dln_res {A : BitVec 64} {w} {m : LocalsH} (h : DLN A w m) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f1") (h3 : x ≠ nm "f2") (h4 : x ≠ nm "f3")
    (h5 : x ≠ nm "nonce") (old : Option (ValueHOL 64)) : DLN A w (m.resVarEq (x, old)) := by
  obtain ⟨⟨⟨⟨hA, hf1⟩, hf2⟩, hf3⟩, y, hy⟩ := h
  exact ⟨⟨⟨⟨dl_res hA h1 old, by rw [lookup_resVarEq_ne _ _ h2]; exact hf1⟩, isW4_res hf2 h3 old⟩,
    isW4_res hf3 h4 old⟩, y, by rw [lookup_resVarEq_ne _ _ h5]; exact hy⟩

theorem w4_of_shape {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) dsh4 = true) :
    ∃ w, v = w4v w := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) h
  match ws, hl with
  | [w0, w1, w2, w3], _ => exact ⟨(w0, w1, w2, w3), rfl⟩

theorem isW4_of_shape {s : State σ} {x : MlS} {v : ValueHOL 64}
    (h : shapeEqHOL (shapeOfHOLExact v) dsh4 = true) : IsW4 (setVarHOLFinite x v s).locals x := by
  obtain ⟨w, rfl⟩ := w4_of_shape h
  exact ⟨_, lk_set_self _ _ _, rfl⟩

/-! ## The second loop's address -/

theorem lp_bound {A W I : BitVec 64} (hA : A.toNat + 56 < 2 ^ 64) (hW : W.toNat ≤ 32)
    (hI : I.toNat < W.toNat) :
    A.toNat + 8 ≤ (A + (BitVec.ofNat 64 8 + ((W - BitVec.ofNat 64 1 - I) >>> (3 : Nat)) *
      BitVec.ofNat 64 8)).toNat ∧
    (A + (BitVec.ofNat 64 8 + ((W - BitVec.ofNat 64 1 - I) >>> (3 : Nat)) * BitVec.ofNat 64 8)).toNat ≤
      A.toNat + 32 := by
  have h1 : (W - BitVec.ofNat 64 1).toNat = W.toNat - 1 := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, BitVec.toNat_ofNat]; omega),
      BitVec.toNat_ofNat]
  have hP : (W - BitVec.ofNat 64 1 - I).toNat = W.toNat - 1 - I.toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, h1]; omega), h1]
  have hS : ((W - BitVec.ofNat 64 1 - I) >>> (3 : Nat)).toNat = (W.toNat - 1 - I.toNat) / 8 := by
    rw [BitVec.toNat_ushiftRight, hP, Nat.shiftRight_eq_div_pow]
  have hM : (((W - BitVec.ofNat 64 1 - I) >>> (3 : Nat)) * BitVec.ofNat 64 8).toNat =
      (W.toNat - 1 - I.toNat) / 8 * 8 := by
    rw [BitVec.toNat_mul, hS, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  have hT : (BitVec.ofNat 64 8 + ((W - BitVec.ofNat 64 1 - I) >>> (3 : Nat)) * BitVec.ofNat 64 8).toNat =
      8 + (W.toNat - 1 - I.toNat) / 8 * 8 := by
    rw [BitVec.toNat_add, hM, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  rw [BitVec.toNat_add, hT, Nat.mod_eq_of_lt (by omega)]
  omega

/-! ## The summary -/

def sigDA (n : Nat) (g : Bool) : Sig := ⟨[.any, .any, .buf n], [], [], g⟩

def sgMF : Sig := ⟨[.any], [], [], false⟩
def sgAA : Sig := ⟨[.any, .any], [], [], false⟩

section main
variable {C : Cfg} {H : Hooks σ} {n : Nat} {g : Bool} {a : Act σ} (ha : ActOK a X)
  (hMF : CSumm σ X a.Cb a.H (nm "mpt_fail") sgMF [])

include ha hMF in
/-- `if c { mpt_fail(k); }` keeps any locals invariant. -/
theorem hoareG_guardSP {L : LocalsH → Prop} {c : ExpHOL 64} {k : Nat} :
    HoareG σ X (PreH a L) (.ite c (callD (nm "mpt_fail") [cw k]) .skip) (SPA a L) :=
  hoareG_iteSP (hoareG_pre (hoareG_callSP ha hMF (by simp [sgMF]) (by simp [sgMF])
      (anyArgs (by simp [sgMF]) rfl)) fun _ _ h => h.1)
    (hoareG_pre (hoareG_skipSP fun _ h => h) fun _ _ h => h.1)

end main

theorem csumm_decode_account_from_leaf {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    (hC : CfgOK C) (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C)
    (hNS : NullSafe X) (hX : X.code.lookup = guestCode)
    {k1 k2 : FK} (hg1 : C.GT.lookup (nm "empty_trie_root") = some k1)
    (hg2 : C.GT.lookup (nm "empty_code_hash") = some k2)
    (hRD : CSumm σ X C H (nm "rlp_decode_fully") sgAA [])
    (hMF : CSumm σ X C H (nm "mpt_fail") sgMF [])
    (hRLS : CSumm σ X C H (nm "rlp_list_to_slices") (sigRLS false) [])
    (hRI : CSumm σ X C H (nm "rlp_item") sgAA [])
    (hZ : CSumm σ X C H (nm "memzero") sigMemzero [])
    {n : Nat} (hn : 56 ≤ n) (g : Bool) :
    CSumm σ X C H (nm "decode_account_from_leaf") (sigDA n g) [] := by
  have hnr := funRet_mpt_fail (σ := σ) hX
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, P, N, B, rfl, -, -, hsc, -, -, hlc⟩ :=
    lookupCode_three code_decode_account_from_leaf (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsc
  set a := actOf C H (sigDA n g) [] [P, N, .val (.word A)] s0 Γ0 p0 with hadef
  have hout0 : BufOK a.Cb a.Γ0 a.p0 A.toNat n :=
    bufOK_of_buf (ps := (sigDA n g).params) ha.hargs0 (i := 2) (n := n) rfl rfl
  have hA : A.toNat + 56 < 2 ^ 64 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    have hse : scratchEnd < 2 ^ 63 := by decide
    rcases Helpers.bufOK_bound hord hL A.isLt hout0 with h | h <;> omega
  -- the cells of the output buffer
  have hcell : ∀ (Γ : Gam) (p : Ptrs) (s : State σ), Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w : BitVec 64, Overlap A.toNat n w → (SCell a.Cb Γ w ∨ ¬ InObj Γ w.toNat) ∧ a.Foot w := by
    intro Γ p s he hh' w hov
    refine ⟨?_, Or.inr (Or.inl (argCells_buf_at (ps := (sigDA n g).params) (i := 2) (n := n)
      rfl rfl hov))⟩
    rcases bufOK_later ha hh' he hout0 _ hov with hs | ⟨hn', -⟩
    · exact Or.inl hs
    · exact Or.inr hn'
  have hoff : ∀ c : Nat, c ≤ 56 → (A + BitVec.ofNat 64 c).toNat = A.toNat + c := fun c hc => by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : c < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega)]
  have hMF' : CSumm σ X a.Cb a.H (nm "mpt_fail") sgMF [] := hMF
  refine hoareG_conseq (P := PreH a (DL A)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨by rw [hloc]; exact hlc, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [sigDA] at hrt⟩
  unfold daBody
  refine hoareG_decH ha.hH (L' := DL A) (fun s _ hL v _ => dl_sv hL (by decide) v) ?_
  refine hoareG_decH ha.hH (L' := DL A) (fun s _ hL v _ => dl_sv hL (by decide) v) ?_
  refine hoareG_seqSP (L := DL A) hqa_of_abn ?_ ?_
  · unfold daTry
    exact hoareG_tryCallSP ha hRD (by simp [sgAA]) (by simp [sgAA]) (anyArgs (by simp [sgAA]) rfl)
      (fun s v h => dl_sv h (by decide) v) (fun s v h => dl_sv h (by decide) v) (by decide)
      (hoareG_callSP ha hMF' (by simp [sgMF]) (by simp [sgMF]) (anyArgs (by simp [sgMF]) rfl))
  refine hoareG_seqSP (L := DL A) hqa_of_abn (hoareG_guardSP ha hMF') ?_
  refine hoareG_decCallH2 (L' := DL A) ha hRLS (funSpec_true _) (by simp [sigRLS])
    (by simp [sigRLS]) (anyArgs (by simp [sigRLS]) rfl)
    (fun s hL _ _ _ v _ _ _ => dl_sv hL (by decide) v) ?_
  refine hoareG_seqSP (L := DL A) hqa_of_abn (hoareG_guardSP ha hMF') ?_
  refine hoareG_decH ha.hH (L' := DL A) (fun s _ hL v _ => dl_sv hL (by decide) v) ?_
  unfold daItems
  refine hoareG_decCallH2 (L' := DL A) ha hRI (funSpec_true _) (by simp [sgAA])
    (by simp [sgAA]) (anyArgs (by simp [sgAA]) rfl)
    (fun s hL _ _ _ v _ _ _ => dl_sv hL (by decide) v) ?_
  refine hoareG_decCallH2 (L' := fun m => ∃ w, DL1 A w m) ha hRI (funSpec_true _) (by simp [sgAA])
    (by simp [sgAA]) (anyArgs (by simp [sgAA]) rfl)
    (fun s hL _ _ _ v _ _ hsh => ?_) ?_
  · obtain ⟨w, rfl⟩ := w4_of_shape hsh
    exact ⟨w, dl_sv hL (by decide) _, lk_set_self _ _ _⟩
  refine hoareG_exH fun w => ?_
  refine hoareG_decCallH2 (L' := DL2 A w) ha hRI (funSpec_true _) (by simp [sgAA])
    (by simp [sgAA]) (anyArgs (by simp [sgAA]) rfl)
    (fun s hL _ _ _ v _ _ hsh => ⟨dl1_sv hL (by decide) (by decide) v, isW4_of_shape hsh⟩) ?_
  refine hoareG_decCallH2 (L' := DLF A w) ha hRI (funSpec_true _) (by simp [sgAA])
    (by simp [sgAA]) (anyArgs (by simp [sgAA]) rfl)
    (fun s hL _ _ _ v _ _ hsh => ⟨dl2_sv hL (by decide) (by decide) (by decide) v,
      isW4_of_shape hsh⟩) ?_
  unfold daMid
  refine hoareG_seqSP (L := DLF A w) hqa_of_abn (hoareG_guardSP ha hMF') ?_
  refine hoareG_seqSP (L := DLF A w) hqa_of_abn (hoareG_guardSP ha hMF') ?_
  refine hoareG_decH ha.hH (L' := DLN A w) (fun s _ hL v hv => ?_) ?_
  · rw [ev_cw] at hv
    cases hv
    exact ⟨dlf_sv hL (by decide) (by decide) (by decide) (by decide) _, _, lk_set_self _ _ _⟩
  refine hoareG_decH ha.hH (L' := DLN A w)
    (fun s _ hL v _ => dln_sv hL (by decide) (by decide) (by decide) (by decide) (by decide) v) ?_
  -- the nonce loop
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn (hoareG_whileSP ha.hH ?_) ?_
  · refine hoareG_pre (P := PreH a (DLN A w)) ?_ fun _ _ h => h.1
    unfold daW1
    refine hoareG_seqSP (L := DLN A w) spa_of_abn (hoareG_assignSP ha.hH fun s _ hL v hv => ?_)
      (hoareG_assignSP ha.hH fun s _ hL v _ =>
        dln_sv hL (by decide) (by decide) (by decide) (by decide) (by decide) v)
    obtain ⟨x, rfl⟩ := ev_op_word hv
    exact ⟨dlf_sv hL.1 (by decide) (by decide) (by decide) (by decide) _, x, lk_set_self _ _ _⟩
  -- `st acct_out + 0, nonce`
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn (hoareG_stwBufSP ha ?_ ?_) ?_
  · intro s _ hL Γ p he hh' x hx h8
    rw [ev_add2 (ev_lw hL.1.1.1.1) (ev_cw _ 0)] at hx
    cases hx
    refine hcell Γ p s he hh' _ ⟨h8, ?_, ?_⟩ <;> rw [hoff 0 (by omega)] <;> omega
  · intro s _ hL Γ p _ _ v hv
    obtain ⟨x, hx⟩ := hL.2
    rw [ev_lw hx] at hv
    cases hv
    exact ⟨_, by rw [flattenHOL]⟩
  -- `if f1.2 >+ 32 { mpt_fail(22); }`
  refine hoareG_seqSP (L := fun m => DLN A w m ∧ w.2.2.1.toNat ≤ 32) hqa_of_abn
    (hoareG_iteSP ?_ ?_) (hoareG_pureH fun h32 => ?_)
  · exact hoareG_pre (hoareG_failSP ha hMF' hnr (by simp [sgMF]) (by simp [sgMF])
      (anyArgs (by simp [sgMF]) rfl)) fun _ _ h => h.1
  · refine hoareG_skip fun s _ ⟨⟨hL, hH'⟩, hc⟩ => ⟨fun _ => ⟨⟨hL, ?_⟩, hH'⟩,
      fun r' h => absurd h (by simp)⟩
    have hf1 := ev_rfield_wv (i := 2) (by rw [ev_lv]; exact hL.1.1.1.2) (by simp)
    have := lower_false (cmp_val_false hc (ev_cw _ 32) hf1)
    simpa using this
  have hZ' : CSumm σ X a.Cb a.H (nm "memzero") sigMemzero [] := hZ
  unfold daTail
  -- `memzero(acct_out + 8, 32)`
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn
    (hoareG_callSP ha hZ' (by simp [sigMemzero]) (by simp [sigMemzero]) ?_) ?_
  · intro s _ hL Γ p he hh' vs hvs
    rw [evs_cons (ev_add2 (ev_lw hL.1.1.1.1) (ev_cw _ 8)) (evs_cons (ev_cw _ 32) evs_nil)] at hvs
    cases hvs
    have hsub : ∀ x, Overlap (A + BitVec.ofNat 64 8).toNat (1 * (BitVec.ofNat 64 32).toNat + 0) x →
        Overlap A.toNat n x := by
      intro x ⟨h1, h2, h3⟩
      rw [hoff 8 (by omega)] at h2 h3
      simp only [BitVec.toNat_ofNat] at h3
      exact ⟨h1, by omega, by omega⟩
    exact ⟨argsOK_2 ⟨_, _, rfl, rfl, fun x hx => bufOK_later ha hh' he hout0 x (hsub x hx)⟩ trivial,
      fun x hx => (hcell Γ p s he hh' x (hsub x (by
        simpa using argCells_bufArgAt ps_memzero rfl rfl rfl hx))).2⟩
  -- `i = 0`
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn (hoareG_assignSP ha.hH fun s _ hL v _ =>
    dln_sv hL (by decide) (by decide) (by decide) (by decide) (by decide) v) ?_
  -- the balance loop
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn (hoareG_whileSP ha.hH ?_) ?_
  · intro s hs ⟨⟨hL, hH'⟩, hc⟩
    have hf1 := ev_rfield_wv (i := 2) (s := s) (by rw [ev_lv]; exact hL.1.1.1.2) (by simp)
    obtain ⟨cw', hcw, hcw0⟩ := condTrue_iff.mp hc
    obtain ⟨I, y, hI, hy, hlt⟩ := cmp_true hcw hcw0
    rw [hf1] at hy
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hy
    subst hy
    have hlt' := lower_true hlt
    simp only [List.getElem_cons_succ, List.getElem_cons_zero] at hlt'
    have hIl : s.locals.lookup (nm "i") = some (.val (.word I)) := by rw [← ev_lv]; exact hI
    refine (?_ : HoareG σ X (PreH a (fun m => DLN A w m ∧ m.lookup (nm "i") = some (.val (.word I))))
      daW2 (SPA a (DLN A w))) s hs ⟨⟨hL, hIl⟩, hH'⟩
    unfold daW2
    refine hoareG_decSP (L' := fun m => DLN A w m ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
        m.lookup (nm "pos") = some (.val (.word (w.2.2.1 - BitVec.ofNat 64 1 - I))))
      (L0' := DLN A w) ha.hH (fun s _ hL v hv => ?_) ?_
      (fun m old h => dln_res h (by decide) (by decide) (by decide) (by decide) (by decide) old)
    · have hf1' := ev_rfield_wv (i := 2) (s := s) (by rw [ev_lv]; exact hL.1.1.1.1.2) (by simp)
      simp only [List.getElem_cons_succ, List.getElem_cons_zero] at hf1'
      rw [ev_sub2 (ev_sub2 hf1' (ev_cw _ 1)) (ev_lw hL.2)] at hv
      cases hv
      exact ⟨dln_sv hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) _,
        by rw [lk_set_ne _ _ (by decide)]; exact hL.2, lk_set_self _ _ _⟩
    refine hoareG_decSP (L' := fun m => DLN A w m ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
        m.lookup (nm "lp") = some (.val (.word (A + (BitVec.ofNat 64 8 +
          ((w.2.2.1 - BitVec.ofNat 64 1 - I) >>> (3 : Nat)) * BitVec.ofNat 64 8)))))
      (L0' := DLN A w) ha.hH (fun s _ hL v hv => ?_) ?_
      (fun m old h => dln_res h (by decide) (by decide) (by decide) (by decide) (by decide) old)
    · rw [ev_add3 (ev_lw hL.1.1.1.1.1) (ev_cw _ 8)
        (ev_mul2 (ev_lsr (ev_lw hL.2.2) (by decide)) (ev_cw _ 8))] at hv
      cases hv
      exact ⟨dln_sv hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) _,
        by rw [lk_set_ne _ _ (by decide)]; exact hL.2.1, lk_set_self _ _ _⟩
    refine hoareG_seqSP (L := fun m => DLN A w m ∧ m.lookup (nm "i") = some (.val (.word I)) ∧
        m.lookup (nm "lp") = some (.val (.word (A + (BitVec.ofNat 64 8 +
          ((w.2.2.1 - BitVec.ofNat 64 1 - I) >>> (3 : Nat)) * BitVec.ofNat 64 8)))))
      spa_of_abn (hoareG_stwBufSP ha ?_ ?_)
      (hoareG_assignSP ha.hH fun s _ hL v _ =>
        dln_sv hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) v)
    · intro s _ hL Γ p he hh' x hx h8
      rw [ev_lw hL.2.2] at hx
      cases hx
      obtain ⟨b1, b2⟩ := lp_bound hA h32 hlt'
      exact hcell Γ p s he hh' _ ⟨h8, by omega, by omega⟩
    · intro s _ _ Γ p _ _ v hv
      obtain ⟨x, rfl⟩ := ev_op_word hv
      exact ⟨_, by rw [flattenHOL]⟩
  -- the two hash fields
  have hfld : ∀ (f gl : MlS) (o c : Nat) (k : FK), 8 ≤ o → o + 8 ≤ 56 →
      (∀ m, DLN A w m → IsW4 m f) → C.GT.lookup gl = some k →
      HoareG σ X (PreH a (DLN A w)) (daFld f gl o c) (SPA a (DLN A w)) := by
    intro f gl o c k ho1 ho2 hw4 hk
    unfold daFld
    have hst : ∀ e : ExpHOL 64, (∀ s : State σ, InCtx s X → DLN A w s.locals → ∀ Γ p,
        Ext a.Γ0 Γ → Heap a Γ p s → ∀ v, ev s e = some v → ∃ x, flattenHOL v = [x]) →
        HoareG σ X (PreH a (DLN A w)) (.store (.op .add [lv (nm "acct_out"), cw o]) e)
          (SPA a (DLN A w)) := fun e hv =>
      hoareG_stwBufSP ha (fun s _ hL Γ p he hh' x hx h8 => by
        rw [ev_add2 (ev_lw hL.1.1.1.1) (ev_cw _ o)] at hx
        cases hx
        exact hcell Γ p s he hh' _ ⟨h8, by rw [hoff o (by omega)]; omega,
          by rw [hoff o (by omega)]; omega⟩) hv
    refine hoareG_iteSP (hoareG_pre (hst _ ?_) fun _ _ h => h.1) (hoareG_pre ?_ fun _ _ h => h.1)
    · intro s _ _ Γ p _ hh' v hv
      obtain ⟨x, rfl⟩ := ev_glob_word ha hh' hk hv
      exact ⟨_, by rw [flattenHOL]⟩
    · refine hoareG_seqSP (L := DLN A w) spa_of_abn (hoareG_guardSP ha hMF') (hst _ ?_)
      intro s _ hL Γ p _ _ v hv
      obtain ⟨ws, hws, hl⟩ := hw4 _ hL
      rw [ev_rfield_wv (i := 1) (by rw [ev_lv]; exact hws) (by omega)] at hv
      cases hv
      exact ⟨_, by rw [flattenHOL]⟩
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn
    (hfld (nm "f2") (nm "empty_trie_root") 40 23 k1 (by omega) (by omega) (fun m h => h.1.1.2) hg1) ?_
  refine hoareG_seqSP (L := DLN A w) hqa_of_abn
    (hfld (nm "f3") (nm "empty_code_hash") 48 24 k2 (by omega) (by omega) (fun m h => h.1.2) hg2) ?_
  exact hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
    hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _

end InitECandidate.Solver.MemSafe.Integ
