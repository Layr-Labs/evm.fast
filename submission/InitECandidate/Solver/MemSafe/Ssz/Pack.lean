import InitECandidate.Solver.MemSafe.Ssz.Merk
import InitECandidate.Solver.Spec.CodeRlp

set_option autoImplicit false

/-!
# `pack_bytes` at constant lengths

```
fun {1,1} pack_bytes(1 p, 1 n) {
  var count = (n + 31) >>> 5; var 1 buf = alloc(count * 32);
  memcpy(buf, p, n); memzero(buf + n, count * 32 - n); return <buf, count>; }
```

* **`csumm_pack_bytes`**: `CSumm … "pack_bytes" (pbSig c) []`, `pbSig c = ⟨[any, eq c], [], [],
  false⟩`, for `c ∈ pbInst = [48, 96, 256]`: the checker accepts the whole body (`pb_chk`) once
  `n` is a constant (the inferred `[any, any]` is not sound: `count * 32` and `n` are unrelated).
* **`funSpec_pack_bytes_val`**: on `[_, c]` (`c + 31 < 2^64`) a return is `<q, (c + 31) / 32>`
  for a word `q`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

def pbPs : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one)]

def pbCount : ExpHOL 64 := .shift .lsr (.op .add [lv (nm "n"), cw 31]) (cw 5)

def pbBody : ProgHOL 64 :=
  .dec (nm "count") .one pbCount
    (.decCall (nm "buf") .one (nm "alloc") [.panop .mul [lv (nm "count"), cw 32]]
      (.seq (callD (nm "memcpy") [lv (nm "buf"), lv (nm "p"), lv (nm "n")])
        (.seq (callD (nm "memzero") [.op .add [lv (nm "buf"), lv (nm "n")],
            .op .sub [.panop .mul [lv (nm "count"), cw 32], lv (nm "n")]])
          (.return (.rstruct [lv (nm "buf"), lv (nm "count")])))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_pack_bytes : fnEntry Guest.Software.guestFn_pack_bytes =
    (nm "pack_bytes", pbPs, pbBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_pack_bytes : guestCode (nm "pack_bytes") = some (pbPs, pbBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 192) (by decide)) ⟨_, rfl⟩
    entry_pack_bytes

/-! ## The checked summary -/

/-- The callees with their fold signatures (`ShardsJL.tab26` entries 556, 555, 558). -/
def pbTab : CTab :=
  [(nm "memcpy", ⟨[(.bufArg 2 1 0), .any, .any], [], [], false⟩, []),
   (nm "memzero", ⟨[(.bufArg 1 1 0), .any], [], [], false⟩, []),
   (nm "alloc", allocSig, [])]

def pbSig (c : Nat) : Sig := ⟨[.any, .eq c], [], [], false⟩

def pbCE (c : Nat) : CEnv := ⟨upg Types.guestC [], pbTab, pbSig c, []⟩

def pbInst : List Nat := [48, 96, 256]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pb_chk48 : (chk (pbCE 48) (initEnv pbPs (pbSig 48).params 0 ⟨[], []⟩) pbBody).isSome =
    true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pb_chk96 : (chk (pbCE 96) (initEnv pbPs (pbSig 96).params 0 ⟨[], []⟩) pbBody).isSome =
    true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pb_chk256 : (chk (pbCE 256) (initEnv pbPs (pbSig 256).params 0 ⟨[], []⟩) pbBody).isSome =
    true := by
  conv => lhs; arg 1; arg 3; cbv
  conv => lhs; arg 1; arg 2; cbv
  conv => lhs; arg 1; arg 1; cbv
  decide +kernel

theorem pb_chk {c : Nat} (h : c ∈ pbInst) :
    (chk (pbCE c) (initEnv pbPs (pbSig c).params 0 ⟨[], []⟩) pbBody).isSome = true := by
  simp only [pbInst, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl
  · exact pb_chk48
  · exact pb_chk96
  · exact pb_chk256

/-- **`pack_bytes` at `n = c`.** -/
theorem csumm_pack_bytes {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H pbTab) {c : Nat} (hc : c ∈ pbInst) :
    CSumm σ X Types.guestC H (nm "pack_bytes") (pbSig c) [] := by
  have hcode : X.code.lookup (nm "pack_bytes") = some (pbPs, pbBody, .comb [.one, .one]) := by
    rw [hF.hX]; exact code_pack_bytes
  obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp (pb_chk hc)
  refine csumm_of_pre hF.hH hF.hC hF.hal hF.hAC hF.hNS hcode rfl ?_
  intro vs s0 Γ0 p0 ha Γ Θ
  exact ⟨o, chk_sound ha (E := pbCE c) rfl hT rfl rfl (winSpecs_guest hF.hX) pbBody _ o ho Γ Θ⟩

/-! ## The value -/

/-- What a return of `pack_bytes` on `[_, c]` is. -/
def PbRet (c : Nat) (v : ValueHOL 64) : Prop :=
  ∃ q : BitVec 64, v = .rStruct [.val (.word q), .val (.word (BitVec.ofNat 64 ((c + 31) / 32)))]

theorem ev_pbCount {s : State σ} {c : Nat} (hc : c + 31 < 2 ^ 64)
    (hn : s.locals.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c)))) :
    ev s pbCount = some (.val (.word (BitVec.ofNat 64 ((c + 31) / 32)))) := by
  unfold pbCount
  rw [ev_shift (ev_add2 (ev_lw hn) (ev_cw _ 31)) (ev_cw _ 5)]
  have h5 : (BitVec.ofNat 64 5).toNat = 5 := rfl
  rw [h5]
  simp only [Flapjack.wordShiftHOL]
  rw [if_neg (by omega)]
  simp only [Option.map_some, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq]
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ushiftRight, BitVec.toNat_add, ofNat_toNat_lt (by omega),
    ofNat_toNat_lt (by omega : 31 < 2 ^ 64), Nat.mod_eq_of_lt hc, Nat.shiftRight_eq_div_pow,
    ofNat_toNat_lt (by omega)]

/-- The locals after `count` and `buf` are bound. -/
def PbL (c : Nat) (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  m.lookup (nm "count") = some (.val (.word (BitVec.ofNat 64 ((c + 31) / 32)))) ∧
    ∃ q : BitVec 64, m.lookup (nm "buf") = some (.val (.word q))

def PbQ (c : Nat) (r : Option (PanSemResultExact 64)) (_ : State σ) : Prop :=
  ∀ v, r = some (.returned v) → PbRet c v

theorem hoareG_pbTail {c : Nat} :
    HoareG σ X (fun s => PbL c s.locals)
      (.seq (callD (nm "memcpy") [lv (nm "buf"), lv (nm "p"), lv (nm "n")])
        (.seq (callD (nm "memzero") [.op .add [lv (nm "buf"), lv (nm "n")],
            .op .sub [.panop .mul [lv (nm "count"), cw 32], lv (nm "n")]])
          (.return (.rstruct [lv (nm "buf"), lv (nm "count")])))) (PbQ c) := by
  have hcall : ∀ (f : MlS) (args : List (ExpHOL 64)),
      HoareG σ X (fun s => PbL c s.locals) (callD f args)
        (fun r t => (r = none → PbL c t.locals) ∧ (r ≠ none → PbQ c r t)) := by
    intro f args
    refine hoareG_callD (funSpec_true (σ := σ) (X := X) f) ?_ ?_
    · intro s _ hL _ _ _ _ _ _ _
      exact ⟨fun _ => hL, fun h => absurd rfl h⟩
    · intro s _ _ _ _ _ r _ _ _ habn
      refine ⟨fun h => absurd h (by simp), fun _ v hv => ?_⟩
      cases hv
      rcases habn with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h
  refine hoareG_seq (hcall _ _) (fun r t _ hr _ h => h.2 hr) ?_
  refine hoareG_seq (hoareG_pre (hcall _ _) fun _ _ h => h.1 rfl) (fun r t _ hr _ h => h.2 hr) ?_
  refine hoareG_return fun t _ h v hv => ?_
  obtain ⟨hL, _⟩ := h
  obtain ⟨hcnt, q, hbuf⟩ := hL rfl
  rw [ev_rstruct (evs_cons (ev_lw hbuf) (evs_cons (ev_lw hcnt) evs_nil))] at hv
  cases hv
  intro v hv
  cases hv
  exact ⟨q, rfl⟩

/-- **A return of `pack_bytes(_, c)` is `<q, (c + 31) / 32>`.** -/
theorem funSpec_pack_bytes_val (hX : X.code.lookup = guestCode) :
    FunSpec σ X (nm "pack_bytes") (fun vs _ r _ => ∀ c, c + 31 < 2 ^ 64 →
      vs[1]? = some (.val (.word (BitVec.ofNat 64 c))) → ∀ v, r = .returned v → PbRet c v) := by
  intro vs body callee rs hl s hs hloc r hr c hc hv1 v hv
  subst hv
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, -, hlb⟩ := lookupCode_two code_pack_bytes (by decide) hl
  simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hv1
  subst hv1
  have hn : s.locals.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c))) := by
    rw [hloc]; exact hlb
  have H : HoareG σ X (fun t => t = s) pbBody (PbQ c) := by
    unfold pbBody
    refine hoareG_dec fun s1 _ hs1 v hv _ => ?_
    subst hs1
    rw [ev_pbCount hc hn] at hv
    cases hv
    refine hoareG_decCall (funSpec_true (σ := σ) (X := X) (nm "alloc")) ?_ ?_
    · intro s2 _ hs2 _ _ _ w st _ _ hsh
      subst hs2
      obtain ⟨q, rfl⟩ := val_of_shapeEq_one' hsh
      refine hoareG_pre (hoareG_conseq (hoareG_pbTail (c := c)) (fun _ _ h => h)
        (fun r t _ _ h => ?_)) (fun t _ ht => ?_)
      · exact fun v hv => h v hv
      · subst ht
        refine ⟨?_, q, lk_set_self _ _ _⟩
        rw [lk_set_ne _ _ (by decide)]
        exact lk_set_self _ _ _
    · intro s2 _ _ _ _ _ r st _ _ habn v hv
      cases hv
      rcases habn with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h
  have H2 := H s hs rfl (by rw [hr]; simp)
  rw [hr] at H2
  exact H2 _ rfl

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.csumm_pack_bytes
#print axioms InitECandidate.Solver.MemSafe.Ssz.funSpec_pack_bytes_val
