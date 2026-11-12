import InitECandidate.Solver.MemSafe.Ssz.Pack
import InitECandidate.Solver.MemSafe.Ssz.Call

set_option autoImplicit false

/-!
# `htr_bytes_vector` at constant lengths

```
fun 1 htr_bytes_vector(1 p, 1 n, 1 out) {
  if n <=+ 32 { memzero(out, 32); memcpy(out, p, n); return 0; }
  var 1 mark = heap_mark(); var {1,1} pk = pack_bytes(p, n);
  merkleize(pk.0, pk.1, pk.1, out); heap_release(mark); return 0; }
```

Callers pass `n = c ∈ {20, 48, 96, 256}`.

* `c = 20`: the first branch returns; the checker accepts the whole body (`hb_chk20`).
* `c ∈ {48, 96, 256}`: the checker cannot read the struct local `pk`. The `if` (pruned), the
  window and the tail (`heap_release(mark); return 0`) are checked; `pack_bytes` is called by hand
  (`decCallV` with `csumm_pack_bytes` and `funSpec_pack_bytes_val`: `pk.1 = (c + 31) / 32`), and so
  is `merkleize(pk.0, pk.1, pk.1, out)` (`callC` with `csumm_merkleize` at `(c + 31) / 32`; `out`
  is the entry buffer temporary).

**`csumm_htr_bytes_vector`**: `CSumm … "htr_bytes_vector" (hbSig c) []`,
`hbSig c = ⟨[any, eq c, buf 32], [], [], false⟩`, `c ∈ hbInst = [20, 48, 96, 256]`, for any hooks
`H` with `FoldOK` and a sound `merkTab`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

theorem ctabSound_sub {C : Cfg} {H : Hooks σ} {t t' : CTab} (h : CTabSound σ X C H t)
    (hs : ∀ e ∈ t', e ∈ t) : CTabSound σ X C H t' :=
  fun f sg cs hm => h f sg cs (hs _ hm)

/-! ## Code -/

def hbPs : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one), (nm "out", .one)]

def hbITE : ProgHOL 64 :=
  .ite (.cmp .notLower (cw 32) (lv (nm "n")))
    (.seq (callD (nm "memzero") [lv (nm "out"), cw 32])
      (.seq (callD (nm "memcpy") [lv (nm "out"), lv (nm "p"), lv (nm "n")]) (.return (cw 0))))
    .skip

def hbMerk : ProgHOL 64 :=
  callD (nm "merkleize")
    [.rfield 0 (lv (nm "pk")), .rfield 1 (lv (nm "pk")), .rfield 1 (lv (nm "pk")), lv (nm "out")]

def hbTail : ProgHOL 64 := .seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))

def hbPk : ProgHOL 64 :=
  .decCall (nm "pk") (.comb [.one, .one]) (nm "pack_bytes") [lv (nm "p"), lv (nm "n")]
    (.seq hbMerk hbTail)

def hbBody : ProgHOL 64 := .seq hbITE (.decCall (nm "mark") .one (nm "heap_mark") [] hbPk)

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_htr_bytes_vector : fnEntry Guest.Software.guestFn_htr_bytes_vector =
    (nm "htr_bytes_vector", hbPs, hbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_htr_bytes_vector : guestCode (nm "htr_bytes_vector") = some (hbPs, hbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 193) (by decide)) ⟨_, rfl⟩
    entry_htr_bytes_vector

/-! ## The checked parts -/

def hbTab : CTab :=
  [(nm "memcpy", ⟨[(.bufArg 2 1 0), .any, .any], [], [], false⟩, []),
   (nm "memzero", ⟨[(.bufArg 1 1 0), .any], [], [], false⟩, [])]

def hbSig (c : Nat) : Sig := ⟨[.any, .eq c, .buf 32], [], [], false⟩

def hbCE (c : Nat) : CEnv := ⟨upg Types.guestC [], hbTab, hbSig c, []⟩

def hbA0 (c : Nat) : AEnv := initEnv hbPs (hbSig c).params 0 ⟨[], []⟩

/-- After `var mark = heap_mark()`. -/
def hbA1 (c : Nat) : AEnv :=
  ⟨setL (nm "mark") (.tmp (hbA0 c).T.length 0) (hbA0 c).L, (hbA0 c).T ++ [some ⟨0, .win .heap⟩]⟩

/-- After `var pk = pack_bytes(p, n)` (`pk` not tracked). -/
def hbA2 (c : Nat) : AEnv := ⟨setL (nm "pk") .unk (hbA1 c).L, (hbA1 c).T⟩

def hbInst : List Nat := [20, 48, 96, 256]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hb_chk20 : (chk (hbCE 20) (hbA0 20) hbBody).isSome = true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

/-- The facts of one large instance. -/
def HbBig (c : Nat) : Prop :=
  c ∈ pbInst ∧ ((c + 31) / 32, (c + 31) / 32, Nat.log2 ((c + 31) / 32 - 1) + 1) ∈ merkInst ∧ c + 31 < 2 ^ 64 ∧
    (chk (hbCE c) (hbA0 c) hbITE).map (fun o => (o.nrm, o.brk, o.cnt)) =
      some (some (hbA0 c), none, none) ∧
    (chk (hbCE c) (hbA2 c) hbTail).isSome = true ∧
    (hbA1 c).L.lookup (nm "n") = some (.cst (BitVec.ofNat 64 c)) ∧
    (hbA2 c).L.lookup (nm "out") = some (.tmp 0 0) ∧ (hbA2 c).T[0]? = some (some ⟨32, .arg 2⟩)

instance (c : Nat) : Decidable (HbBig c) := by unfold HbBig; infer_instance

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hb_big48 : HbBig 48 := by decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hb_big96 : HbBig 96 := by decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hb_big256 : HbBig 256 := by decide +kernel

theorem aout_of_map {x : Option AOut} {A : AEnv}
    (h : x.map (fun o => (o.nrm, o.brk, o.cnt)) = some (some A, none, none)) :
    x = some (.normal A) := by
  rcases x with _ | ⟨n, b, c⟩
  · cases h
  · simp only [Option.map_some, Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    rfl

/-- The `AOut` after restoring `x` (as `chk` does at a binding). -/
def restO (x : MlS) (A : AEnv) (o : AOut) : AOut :=
  ⟨o.nrm.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
    o.brk.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
    o.cnt.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv))⟩

/-! ## The hand steps -/

/-- The value of `pk` after `pack_bytes(p, c)`. -/
def PkV (c : Nat) (m : LocalsS) : Prop :=
  ∃ q : BitVec 64, m.lookup (nm "pk") =
    some (.rStruct [.val (.word q), .val (.word (BitVec.ofNat 64 ((c + 31) / 32)))])

theorem argsOK_merk {C : Cfg} {Γ : Gam} {p : Ptrs} {q O : BitVec 64} {d : Nat}
    (hO : BufOK C Γ p O.toNat 32) :
    ArgsOK C Γ p (merkSig d d).params [.val (.word q), .val (.word (BitVec.ofNat 64 d)),
      .val (.word (BitVec.ofNat 64 d)), .val (.word O)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | _ | i <;>
    simp only [merkSig, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq,
      List.getElem?_nil, reduceCtorEq] at hpt hv <;> subst hpt hv
  · trivial
  · rfl
  · rfl
  · exact ⟨O, rfl, hO⟩

theorem argCells_merk {q O : BitVec 64} {d : Nat} {x : BitVec 64}
    (h : ArgCells (merkSig d d).params [.val (.word q), .val (.word (BitVec.ofNat 64 d)),
      .val (.word (BitVec.ofNat 64 d)), .val (.word O)] x) : Overlap O.toNat 32 x := by
  obtain ⟨i, w, hw, ⟨n, hn, hov⟩ | ⟨j, c', d', y, hj, -, -⟩⟩ := h
  · rcases i with _ | _ | _ | _ | i <;> simp [merkSig] at hn
    simp only [argW, List.getElem?_cons_succ, List.getElem?_cons_zero, wordOf,
      Option.some.injEq] at hw
    subst hw hn
    exact hov
  · rcases i with _ | _ | _ | _ | i <;> simp [merkSig] at hj

/-- **`htr_bytes_vector` at `n = c`.** -/
theorem csumm_htr_bytes_vector {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H merkTab) {c : Nat} (hc : c ∈ hbInst) :
    CSumm σ X Types.guestC H (nm "htr_bytes_vector") (hbSig c) [] := by
  have hcode : X.code.lookup (nm "htr_bytes_vector") = some (hbPs, hbBody, .one) := by
    rw [hF.hX]; exact code_htr_bytes_vector
  have hWS := winSpecs_guest (σ := σ) hF.hX
  have hTh : CTabSound σ X Types.guestC H hbTab :=
    ctabSound_sub hT fun e he => by
      simp only [hbTab, List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;> simp [merkTab]
  have hTp : CTabSound σ X Types.guestC H pbTab :=
    ctabSound_sub hT fun e he => by
      simp only [pbTab, List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl | rfl <;> simp [merkTab]
  refine csumm_of_pre hF.hH hF.hC hF.hal hF.hAC hF.hNS hcode rfl ?_
  intro vs s0 Γ0 p0 ha Γ Θ
  simp only [hbInst, List.mem_cons, List.not_mem_nil, or_false] at hc
  rcases hc with rfl | hbig
  · obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp hb_chk20
    exact ⟨o, chk_sound ha (E := hbCE 20) rfl hTh rfl rfl hWS hbBody _ o ho Γ Θ⟩
  have hB : HbBig c := by
    rcases hbig with rfl | rfl | rfl
    · exact hb_big48
    · exact hb_big96
    · exact hb_big256
  obtain ⟨hpb, hmk, hc31, hite, htl, hyn, hout, hT0⟩ := hB
  obtain ⟨o2, ho2⟩ := Option.isSome_iff_exists.mp htl
  have hPB := csumm_pack_bytes hF hTp hpb
  have hMK := csumm_merkleize hF hT hmk
  have hV : FunSpec σ X (nm "pack_bytes") (fun vs _ r _ => ∀ v, r = .returned v →
      ∀ c', c' + 31 < 2 ^ 64 → vs[1]? = some (.val (.word (BitVec.ofNat 64 c'))) → PbRet c' v) :=
    (funSpec_pack_bytes_val hF.hX).mono fun _ _ _ _ h v hv c' hc' h1 => h c' hc' h1 v hv
  -- the merkleize call
  have hMerk : ∀ Γ' Θ', HoareG σ X
      (fun t => IG (actOf Types.guestC H (hbSig c) [] vs s0 Γ0 p0) (hbA2 c) Γ' Θ' t ∧
        PkV c t.locals) hbMerk
      (SPost (actOf Types.guestC H (hbSig c) [] vs s0 Γ0 p0) [] (.normal (hbA2 c)) Γ' Θ') := by
    intro Γ' Θ'
    refine callC ha hMK (fun g hg => by simp [merkSig] at hg) rfl [] Γ' Θ' ?_
    intro s p hs hh ht hl hJ vs' hvs
    obtain ⟨q, hpk⟩ := hJ
    obtain ⟨v, hv, wo, rfl, w0, n0, hw0, hwe⟩ := hl _ _ hout
    obtain ⟨q', hq', hbuf, hprov⟩ := ht.2 0 _ hT0
    rw [hq'] at hw0
    simp only [Option.some.injEq, Prod.mk.injEq] at hw0
    obtain ⟨rfl, -⟩ := hw0
    have hwq : wo = q' := by rw [hwe]; simp
    subst hwq
    have hev := ev_rfield (s := s) (x := lv (nm "pk")) hpk
    have e0 : ev s (.rfield 0 (lv (nm "pk"))) = some (.val (.word q)) := by rw [hev 0]; rfl
    have e1 : ev s (.rfield 1 (lv (nm "pk"))) =
        some (.val (.word (BitVec.ofNat 64 ((c + 31) / 32)))) := by rw [hev 1]; rfl
    rw [evs_cons e0 (evs_cons e1 (evs_cons e1 (evs_cons (ev_lw hv) evs_nil)))] at hvs
    cases hvs
    refine ⟨argsOK_merk hbuf, fun x hx => ?_⟩
    exact Or.inr (Or.inl (hprov x (argCells_merk hx)))
  -- the struct call
  have hPk : ∀ Γ' Θ', HoareG σ X
      (fun t => IG (actOf Types.guestC H (hbSig c) [] vs s0 Γ0 p0) (hbA1 c) Γ' Θ' t ∧
        t.locals.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c)))) hbPk
      (SPost (actOf Types.guestC H (hbSig c) [] vs s0 Γ0 p0) [] (restO (nm "pk") (hbA1 c) o2)
        Γ' Θ') := by
    intro Γ' Θ'
    unfold hbPk restO
    refine decCallV ha hPB (fun g hg => by simp [pbSig] at hg) rfl (Γ := Γ') (Θ := Θ')
      (J := fun m => m.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c))))
      (V := fun vs v => ∀ c', c' + 31 < 2 ^ 64 → vs[1]? = some (.val (.word (BitVec.ofNat 64 c'))) →
        PbRet c' v) hV (J' := PkV c) ?_ ?_
      (fun Γ'' _ => hoareG_seqN (hMerk Γ'' Θ') fun Γ3 Θ3 _ =>
        chk_sound ha (E := hbCE c) rfl hTh rfl rfl hWS hbTail (hbA2 c) o2 ho2 Γ3 Θ3)
    · intro s p _ _ _ _ hn vs' hvs
      obtain ⟨v0, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
      rw [evs_cons (ev_lw hn) evs_nil] at hvs1
      cases hvs1
      refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x hx => ?_⟩
      · rcases i with _ | _ | i <;>
          simp only [pbSig, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq,
            List.getElem?_nil, reduceCtorEq] at hpt hv <;> subst hpt hv
        · trivial
        · rfl
      · obtain ⟨i, w, -, ⟨n, hn', -⟩ | ⟨j, c', d', y, hj, -, -⟩⟩ := hx
        · rcases i with _ | _ | i <;> simp [pbSig] at hn'
        · rcases i with _ | _ | i <;> simp [pbSig] at hj
    · intro s st vs' v hn hvs hVv
      obtain ⟨v0, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
      rw [evs_cons (ev_lw hn) evs_nil] at hvs1
      cases hvs1
      obtain ⟨q, rfl⟩ := hVv c hc31 rfl
      exact ⟨q, lk_set_self _ _ _⟩
  have hI := aout_of_map hite
  refine ⟨restO (nm "mark") (hbA0 c) (restO (nm "pk") (hbA1 c) o2), ?_⟩
  refine hoareG_seqN (chk_sound ha (E := hbCE c) rfl hTh rfl rfl hWS hbITE (hbA0 c) _ hI Γ Θ) ?_
  intro Γ' Θ' _
  refine mark_post ha hWS (f := nm "heap_mark") (rg := .heap) rfl (fun Γ1 Θ1 => ?_) Γ' Θ'
  refine hoareG_pre (hPk Γ1 Θ1) fun t _ ht => ⟨ht, ?_⟩
  obtain ⟨_, _, _, hl⟩ := ht
  obtain ⟨v, hv, w, rfl, hw⟩ := hl _ _ hyn
  rw [hv]
  simp only [AVok] at hw
  rw [hw]

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.csumm_htr_bytes_vector
