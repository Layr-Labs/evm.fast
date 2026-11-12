import InitECandidate.Solver.MemSafe.Ins.Leaf
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `_insert_into_leaf`: the function summary

```
fun 1 _insert_into_leaf(1 node, 1 rk, 1 rl, 1 vptr, 1 vlen) {
  var ek = lds node+32; var el = lds node+40;
  if el == rl { var eq = memeq(ek, rk, el); if eq != 0 { st node+48, vptr; st node+56, vlen; return node; } }
  var pl = common_prefix_length(ek, el, rk, rl);
  var br = _create_branch_from_two_leaves(ek+pl, el-pl, lds node+48, lds node+56, rk+pl, rl-pl, vptr, vlen);
  if pl >+ 0 { return node_new_ext(ek, pl, br); }
  return br; }
```
Pre: `node` is an `NLEAF` object of `Γ` (its nibble slice is `NIn` by the hook) and `(rk, rl)` is `NIn`.
Post: the result is a node object of `Γ'`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem cpl_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "common_prefix_length")
      ⟨[.any, .any, .any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

def ilRest : ProgHOL 64 :=
  .seq
    (.ite (.cmp .equal (lv (nm "el")) (lv (nm "rl")))
      (.decCall (nm "eq") .one (nm "memeq") [lv (nm "ek"), lv (nm "rk"), lv (nm "el")]
        (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0))
          (.seq (.store (.op .add [lv (nm "node"), cw 48]) (lv (nm "vptr")))
            (.seq (.store (.op .add [lv (nm "node"), cw 56]) (lv (nm "vlen")))
              (.return (lv (nm "node")))))
          .skip))
      .skip)
    (.decCall (nm "pl") .one (nm "common_prefix_length")
      [lv (nm "ek"), lv (nm "el"), lv (nm "rk"), lv (nm "rl")]
      (.decCall (nm "br") .one (nm "_create_branch_from_two_leaves")
        [.op .add [lv (nm "ek"), lv (nm "pl")], .op .sub [lv (nm "el"), lv (nm "pl")],
         .load .one (.op .add [lv (nm "node"), cw 48]), .load .one (.op .add [lv (nm "node"), cw 56]),
         .op .add [lv (nm "rk"), lv (nm "pl")], .op .sub [lv (nm "rl"), lv (nm "pl")],
         lv (nm "vptr"), lv (nm "vlen")]
        (.seq (.ite (.cmp .lower (cw 0) (lv (nm "pl")))
            (.call none (nm "node_new_ext") [lv (nm "ek"), lv (nm "pl"), lv (nm "br")])
            .skip)
          (.return (lv (nm "br"))))))

def ilBody : ProgHOL 64 :=
  .dec (nm "ek") .one (.load .one (.op .add [lv (nm "node"), cw 32]))
    (.dec (nm "el") .one (.load .one (.op .add [lv (nm "node"), cw 40])) ilRest)

def params_il : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "rk", .one), (nm "rl", .one), (nm "vptr", .one), (nm "vlen", .one)]

theorem entry_il : fnEntry Guest.Software.guestFn__insert_into_leaf =
    (nm "_insert_into_leaf", params_il, ilBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_il :
    guestCode (nm "_insert_into_leaf") = some (params_il, ilBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 273) (by decide)) ⟨_, rfl⟩
    entry_il


def ilSig : Sig := ⟨[.any, .any, .any, .any, .any], [.fits Types.nodeU], [], true⟩

/-- The precondition: `node` is a leaf object of `Γ`, and `(rk, rl)` is a `` slice. -/
def IlPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ N RK RL VP VL : BitVec 64,
    vs = [.val (.word N), .val (.word RK), .val (.word RL), .val (.word VP), .val (.word VL)] ∧
    (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNLEAF) ∧ NIn Γ RK RL ∧ Hooks.VInR Types.tVAL Γ VP VL

/-- The result is a node object. -/
def NdV (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty ∈ Node.nodeTys

theorem retNd {Γ : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {w : BitVec 64}
    (h : ∃ o ∈ Γ, o.base = w ∧ o.ty ∈ Node.nodeTys) :
    RetOK Γ p p' vs [.fits Types.nodeU] (.val (.word w)) ∧ NdV Γ (.val (.word w)) := by
  obtain ⟨o, ho, hb, ht⟩ := h
  exact ⟨retOK_fits1 (Or.inr ⟨o, ho, hb, ht⟩), o, ho, by rw [hb], ht⟩

def kvI (N RK RL VP VL W W2 : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "ek", W), (nm "el", W2), (nm "node", N), (nm "rk", RK), (nm "rl", RL), (nm "vptr", VP),
   (nm "vlen", VL)]

/-- The `Γ`-only facts after `ek`, `el` are bound. -/
def EI (N RK RL VP VL W W2 : BitVec 64) (Γ : Gam) : Prop :=
  (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNLEAF) ∧ NIn Γ RK RL ∧ NIn Γ W W2 ∧
    Hooks.VInR Types.tVAL Γ VP VL

theorem argCells_fitsany {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any ∨ ∃ k, pt = .fits k)
    {vs : List (ValueHOL 64)} {a : BitVec 64} : ¬ ArgCells ps vs a := by
  rintro ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -⟩⟩
  · rcases hps _ (List.mem_of_getElem? hn) with h | ⟨k, h⟩ <;> cases h
  · rcases hps _ (List.mem_of_getElem? hn) with h | ⟨k, h⟩ <;> cases h

/-- `node_new_ext(NIB, NLEN, CH)` with `CH` fitting `nodeU`. -/
theorem argsOK_ext {C : Cfg} {Γ : Gam} {q : Ptrs} {NIB NLEN CH : BitVec 64}
    (h : Fits Γ Types.nodeU CH) :
    ArgsOK C Γ q Node.neSig.params [.val (.word NIB), .val (.word NLEN), .val (.word CH)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Node.neSig] at hpt hv <;> subst hpt <;> subst hv
  · trivial
  · trivial
  · exact ⟨CH, rfl, h⟩


theorem ilRest_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ilSig leafCaps vs s0 Γ0 p0) guestCtx)
    {N RK RL VP VL W W2 : BitVec 64} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ilSig leafCaps vs s0 Γ0 p0)
        (LKV (kvI N RK RL VP VL W W2)) (fun Γ _ _ => EI N RK RL VP VL W W2 Γ))
      ilRest
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ilSig leafCaps vs s0 Γ0 p0)
        (fun _ => True) (fun _ _ _ => True)
        (fun Γ' p' _ v => RetOK Γ' p0 p' vs [.fits Types.nodeU] v ∧ NdV Γ' v)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ilSig leafCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kv := kvI N RK RL VP VL W W2 with hkv
  have hEx : ∀ Γ Γ', EI N RK RL VP VL W W2 Γ → Ext Γ Γ' → EI N RK RL VP VL W W2 Γ' :=
    fun Γ Γ' h he => ⟨obT_ext he h.1, nIn_ext he h.2.1, nIn_ext he h.2.2.1, Hooks.vInR_ext he h.2.2.2⟩
  have hnode : (nm "node", N) ∈ kv := by simp [kv, kvI]
  have hvptr : (nm "vptr", VP) ∈ kv := by simp [kv, kvI]
  have hvlen : (nm "vlen", VL) ∈ kv := by simp [kv, kvI]
  have hfn : ∀ x : MlS, (x = nm "eq" ∨ x = nm "pl") → ∀ p ∈ kv, p.1 ≠ x := by
    intro x hx p hp
    simp only [kv, kvI, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hx with rfl | rfl <;>
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  unfold ilRest
  refine gp_seq (L := LKV kv) (E := fun Γ _ _ => EI N RK RL VP VL W W2 Γ) ?_ ?_
  · -- the early return
    refine hoareG_ite ?_ (gp_skip fun s h => h.1)
    refine hoareG_pre (P := GI a (LKV kv) (fun Γ _ _ => EI N RK RL VP VL W W2 Γ)) ?_ (fun s _ h => h.1)
    refine gp_decCall ha (sumA_of_csumm memeq_R) (funSpec_true _) (by simp) (fun _ => rfl)
      (L1 := fun _ m => LKV kv m) (E1 := fun _ Γ _ _ => EI N RK RL VP VL W W2 Γ)
      (L2 := LKV kv) (E2 := fun Γ _ _ => EI N RK RL VP VL W W2 Γ)
      (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
        ⟨scrOld_nf0_co haC co rfl, fun v hv _ => hEx _ _ hE co.ext⟩)
      (fun s st v hL hsh => lkv_set (s := { st with locals := s.locals }) hL (hfn _ (Or.inl rfl)) v)
      ?_ (fun m0 m h0 h => lkv_res h (hfn _ (Or.inl rfl)))
    intro v
    refine hoareG_ite ?_ (gp_skip fun s h => h.1)
    refine hoareG_pre (P := GI a (LKV kv) (fun Γ _ _ => EI N RK RL VP VL W W2 Γ)) ?_ (fun s _ h => h.1)
    refine gp_stPairK (haC := rfl) (haH := rfl) (k := 6) rfl rfl (x := nm "node") (B := N) (V1 := VP)
      (V2 := VL) (fun m h => h _ hnode) (fun s hL => ev_lw (hL _ hvptr)) (fun s hL => ev_lw (hL _ hvlen))
      (fun Γ q s hh hE => ?_) ?_
    · obtain ⟨⟨o, ho, hb, ht⟩, -, -, hV⟩ := hE
      have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := by
        obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
        exact (hLy.1 o ho).2.2.2.1
      rw [ht, Types.ty_NLEAF] at hsz
      simp only [Types.nleafTy] at hsz
      have hs6 : o.HasSlot 6 := by unfold Obj.HasSlot; omega
      have hs7 : o.HasSlot 7 := by unfold Obj.HasSlot; omega
      have hcap : ∀ k, k = 6 ∨ k = 7 → ∃ c ∈ a.caps, c.g = anyG ∧ c.t = o.ty ∧ k ∈ c.ks :=
        fun k hk => ⟨⟨anyG, Types.tNLEAF, [6, 7], false⟩, by simp [a, actOf, leafCaps], rfl, ht.symm, by simpa using hk⟩
      exact ⟨o, ho, hb, Or.inl ⟨ht, rfl⟩, hV,
        foot_of_cap hh ha.hord0 ha.hsz0 ho hs6 (by rw [ht]; rfl) (hcap 6 (Or.inl rfl)),
        foot_of_cap hh ha.hord0 ha.hsz0 ho hs7 (by rw [ht]; rfl) (hcap 7 (Or.inr rfl))⟩
    refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
    rw [ev_lw (hL _ hnode)] at hv
    cases hv
    obtain ⟨o, ho, hb, ht⟩ := hE.1
    exact retNd ⟨o, ho, hb, by simp [Node.nodeTys, ht]⟩
  · -- `var pl = common_prefix_length(ek, el, rk, rl)`
    have hek : (nm "ek", W) ∈ kv := by simp [kv, kvI]
    have hel : (nm "el", W2) ∈ kv := by simp [kv, kvI]
    have hrk : (nm "rk", RK) ∈ kv := by simp [kv, kvI]
    have hrl : (nm "rl", RL) ∈ kv := by simp [kv, kvI]
    refine gp_decCall ha (sumA_of_csumm cpl_R) (funSpec_of_funRet (Spec.Mpt.funRet_cpl hX)) (by simp)
      (fun _ => rfl)
      (L1 := fun v m => LKV kv m ∧ m.lookup (nm "pl") = some v ∧ ∃ PL : BitVec 64, v = .val (.word PL))
      (E1 := fun v Γ _ _ => EI N RK RL VP VL W W2 Γ ∧
        ∀ PL : BitVec 64, v = .val (.word PL) → PL.toNat ≤ W2.toNat ∧ PL.toNat ≤ RL.toNat)
      (L2 := fun _ => True) (E2 := fun _ _ _ => True)
      (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ => ⟨hEx _ _ hE co.ext, fun PL hPL => ?_⟩⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL
          (hfn _ (Or.inr rfl)) v, by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun _ _ _ _ => trivial)
    · have hev : evs s [lv (nm "ek"), lv (nm "el"), lv (nm "rk"), lv (nm "rl")] =
          some [.val (.word W), .val (.word W2), .val (.word RK), .val (.word RL)] :=
        evs_cons (ev_lw (hL _ hek)) (evs_cons (ev_lw (hL _ hel)) (evs_cons (ev_lw (hL _ hrk))
          (evs_cons (ev_lw (hL _ hrl)) evs_nil)))
      rw [hev] at hvs
      cases hvs
      obtain ⟨A, C, al, bl, pl, hvs', hv', h1, h2⟩ := hLc v hv
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
      obtain ⟨-, hal, -, hbl, -⟩ := hvs'
      subst hPL
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
      subst hv'
      subst hal; subst hbl
      exact ⟨h1, h2⟩
    intro v
    by_cases hw : ∃ PL : BitVec 64, v = .val (.word PL)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨PL, rfl⟩ := hw
    let kv2 : List (MlS × BitVec 64) := (nm "pl", PL) :: kv
    let EΓ2 : Gam → Prop := fun Γ => EI N RK RL VP VL W W2 Γ ∧ PL.toNat ≤ W2.toNat ∧ PL.toNat ≤ RL.toNat
    have hEx2 : ∀ Γ Γ', EΓ2 Γ → Ext Γ Γ' → EΓ2 Γ' := fun Γ Γ' h he => ⟨hEx _ _ h.1 he, h.2⟩
    have hpl : (nm "pl", PL) ∈ kv2 := by simp [kv2]
    have hek2 : (nm "ek", W) ∈ kv2 := by simp [kv2, kv, kvI]
    have hel2 : (nm "el", W2) ∈ kv2 := by simp [kv2, kv, kvI]
    have hrk2 : (nm "rk", RK) ∈ kv2 := by simp [kv2, kv, kvI]
    have hrl2 : (nm "rl", RL) ∈ kv2 := by simp [kv2, kv, kvI]
    have hnode2 : (nm "node", N) ∈ kv2 := by simp [kv2, kv, kvI]
    have hvptr2 : (nm "vptr", VP) ∈ kv2 := by simp [kv2, kv, kvI]
    have hvlen2 : (nm "vlen", VL) ∈ kv2 := by simp [kv2, kv, kvI]
    have hfbr : ∀ p ∈ kv2, p.1 ≠ nm "br" := by
      intro p hp
      simp only [kv2, kv, kvI, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
    refine hoareG_pre (P := GI a (LKV kv2) (fun Γ _ _ => EΓ2 Γ)) ?_
      (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc, hE.1, hE.2 PL rfl⟩)
    swap
    · intro p hp
      simp only [kv2, List.mem_cons] at hp
      rcases hp with rfl | hp
      · exact hlb
      · exact hL p hp
    -- `var br = _create_branch_from_two_leaves(...)`
    refine gp_decCall ha (sumSpecA_create_branch_G) (funSpec_true _) (by simp [cbSig])
      (fun _ => rfl)
      (L1 := fun v m => LKV kv2 m ∧ m.lookup (nm "br") = some v ∧ ∃ B : BitVec 64, v = .val (.word B))
      (E1 := fun v Γ _ _ => EΓ2 Γ ∧
        ∀ B : BitVec 64, v = .val (.word B) → ∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH)
      (L2 := fun _ => True) (E2 := fun _ _ _ => True)
      (fun s Γ q _ hL hh hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨hQ.1,
        fun v hv _ => ⟨hEx2 _ _ hE co.ext, fun B hB => ?_⟩⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfbr v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun _ _ _ _ => trivial)
    · have hany := anyArgsG (a := a) (sg' := cbSig) (Γ := Γ) (q := q) (by simp [cbSig]) rfl hvs
      refine ⟨hany.1, hany.2, fun callee => ?_⟩
      obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
      obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
      obtain ⟨v5, r5, rfl, h5, hr5⟩ := evs_cons_inv hr4
      obtain ⟨v6, r6, rfl, h6, hr6⟩ := evs_cons_inv hr5
      obtain ⟨v7, r7, rfl, h7, hr7⟩ := evs_cons_inv hr6
      obtain ⟨v8, r8, rfl, h8, hr8⟩ := evs_cons_inv hr7
      rw [evs_nil] at hr8
      cases hr8
      have e1 : v1 = .val (.word (W + PL)) :=
        Option.some.inj (h1.symm.trans (ev_add2 (ev_lw (hL _ hek2)) (ev_lw (hL _ hpl))))
      have e2 : v2 = .val (.word (W2 - PL)) :=
        Option.some.inj (h2.symm.trans (ev_sub2 (ev_lw (hL _ hel2)) (ev_lw (hL _ hpl))))
      have e3 := Spec.Mpt.Dec.ev_ld (hL _ hnode2) 48 v3 h3
      have e4 := Spec.Mpt.Dec.ev_ld (hL _ hnode2) 56 v4 h4
      have e5 : v5 = .val (.word (RK + PL)) :=
        Option.some.inj (h5.symm.trans (ev_add2 (ev_lw (hL _ hrk2)) (ev_lw (hL _ hpl))))
      have e6 : v6 = .val (.word (RL - PL)) :=
        Option.some.inj (h6.symm.trans (ev_sub2 (ev_lw (hL _ hrl2)) (ev_lw (hL _ hpl))))
      have e7 : v7 = .val (.word VP) := Option.some.inj (h7.symm.trans (ev_lw (hL _ hvptr2)))
      have e8 : v8 = .val (.word VL) := Option.some.inj (h8.symm.trans (ev_lw (hL _ hvlen2)))
      subst e1 e2 e3 e4 e5 e6 e7 e8
      obtain ⟨o, ho, hb, ht⟩ := hE.1.1
      have hvo := Hooks.vIn_of_leaf hh.1 ho ht
      rw [hb] at hvo
      exact ⟨_, _, _, _, _, _, _, _, rfl,
        nIn_sub hE.1.2.2.1 hE.2.1, nIn_sub hE.1.2.1 hE.2.2, hvo, hE.1.2.2.2⟩
    · have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
        (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
      obtain ⟨o, ho, hvo, hot⟩ := hQ.2 v hv q q' hq0 co.heap.2.1
      subst hB
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hvo
      exact ⟨o, ho, hvo.symm, hot⟩
    intro v
    by_cases hw : ∃ B : BitVec 64, v = .val (.word B)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨B, rfl⟩ := hw
    let kv3 : List (MlS × BitVec 64) := (nm "br", B) :: kv2
    let EΓ3 : Gam → Prop := fun Γ => EΓ2 Γ ∧ ∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH
    have hEx3 : ∀ Γ Γ', EΓ3 Γ → Ext Γ Γ' → EΓ3 Γ' :=
      fun Γ Γ' h he => ⟨hEx2 _ _ h.1 he, obT_ext he h.2⟩
    have hbr : (nm "br", B) ∈ kv3 := by simp [kv3]
    refine hoareG_pre (P := GI a (LKV kv3) (fun Γ _ _ => EΓ3 Γ)) ?_
      (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc, hE.1, hE.2 B rfl⟩)
    swap
    · intro p hp
      simp only [kv3, List.mem_cons] at hp
      rcases hp with rfl | hp
      · exact hlb
      · exact hL p hp
    refine gp_seq (L := LKV kv3) (E := fun Γ _ _ => EΓ3 Γ) ?_ ?_
    · refine hoareG_ite ?_ (gp_skip fun s h => h.1)
      refine hoareG_pre (P := GI a (LKV kv3) (fun Γ _ _ => EΓ3 Γ)) ?_ (fun s _ h => h.1)
      refine gp_tail ha node_new_extT_guestR (ctor_sp hX ctor_ext_sp) (by simp [Node.neSig])
        (fun _ => rfl) ?_ ?_
      · intro s Γ q _ hL hh hE vs1 hvs
        have hev : evs s [lv (nm "ek"), lv (nm "pl"), lv (nm "br")] =
            some [.val (.word W), .val (.word PL), .val (.word B)] :=
          evs_cons (ev_lw (hL (nm "ek", W) (by simp [kv3, kv2, kv, kvI])))
            (evs_cons (ev_lw (hL (nm "pl", PL) (by simp [kv3, kv2]))) (evs_cons (ev_lw (hL _ hbr)) evs_nil))
        rw [hev] at hvs
        cases hvs
        obtain ⟨o, ho, hb, ht⟩ := hE.2
        exact ⟨argsOK_ext (Or.inr ⟨o, ho, hb, by simp [Node.nodeTys, ht]⟩),
          fun x => argCells_fitsany (by simp [Node.neSig]),
          fun _ => ⟨W, PL, B, rfl, nIn_prefix hE.1.1.2.2.1 hE.1.2.1⟩⟩
      · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
        refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
        obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
        exact retNd ⟨o, ho, rfl, by simp [Node.nodeTys, hot]⟩
    · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
      rw [ev_lw (hL _ hbr)] at hv
      cases hv
      obtain ⟨o, ho, hb, ht⟩ := hE.2
      exact retNd ⟨o, ho, hb, by simp [Node.nodeTys, ht]⟩

/-- **`_insert_into_leaf`'s summary** at `guestHooksR`. -/
theorem sumSpecA_insert_into_leaf_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_insert_into_leaf") ilSig
      (fun vs s Γ => IlPre vs s Γ) (fun _ s Γ a => CapPW leafCaps s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → NdV Γ' v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gpC (Rx := fun vs _ Γ' _ _ v => NdV Γ' v) hF.hH hF.hC hF.hal hF.hAC hF.hNS
    (capsOK_leaf _) (by intro c hc; simp only [leafCaps, List.mem_singleton] at hc; subst hc; rfl) ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_il hl
  obtain ⟨N, RK, RL, VP, VL, rfl, hleaf, hrk, hvv⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ilSig leafCaps _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let kv0 : List (MlS × BitVec 64) := [(nm "node", N), (nm "rk", RK), (nm "rl", RL), (nm "vptr", VP),
    (nm "vlen", VL)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
    · exact (hbind 4 (by decide) (by simp)).1
  have hnode : (nm "node", N) ∈ kv0 := by simp [kv0]
  have hk0 : ∀ x : MlS, (x = nm "ek" ∨ x = nm "el") → ∀ p ∈ kv0, p.1 ≠ x := by
    intro x hx p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hx with rfl | rfl <;>
      rcases hp with rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNLEAF) ∧
      NIn Γ RK RL ∧ Hooks.VInR Types.tVAL Γ VP VL))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ NdV Γ' v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hleaf, hrk, hvv⟩
  · intro r t _ _ h
    exact gp_final h
  unfold ilBody
  -- `var ek = lds (node + 32)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "ek") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ _ M => ((∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNLEAF) ∧ NIn Γ RK RL ∧
        Hooks.VInR Types.tVAL Γ VP VL) ∧
      ∀ W : BitVec 64, v = .val (.word W) → NIn Γ W (rd M (N + BitVec.ofNat 64 40)))
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun W hW => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnode) 32 v hv
    exact ⟨lkv_set (s := s) hL (hk0 _ (Or.inl rfl)) v,
      by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnode) 32 v hv
    rw [hv'] at hW
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW
    subst hW
    exact slice_of_node hh'.1 (N := N) (by obtain ⟨o, ho, hb, ht⟩ := hE.1; exact ⟨o, ho, hb, Or.inl ht⟩)
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨W, rfl⟩ := hw
  -- `var el = lds (node + 40)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "ek") = some (.val (.word W)) ∧
      m.lookup (nm "el") = some v ∧ ∃ W2 : BitVec 64, v = .val (.word W2))
    (E1 := fun v Γ _ _ => ((∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNLEAF) ∧ NIn Γ RK RL ∧
        Hooks.VInR Types.tVAL Γ VP VL) ∧
      ∀ W2 : BitVec 64, v = .val (.word W2) → NIn Γ W W2)
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE.1, fun W2 hW2 => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · have := Spec.Mpt.Dec.ev_ld (hL.1 _ hnode) 40 v hv
    exact ⟨lkv_set (s := s) hL.1 (hk0 _ (Or.inr rfl)) v,
      by rw [lk_keep (by decide) hL.2.1], by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL.1 _ hnode) 40 v hv
    rw [hv'] at hW2
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW2
    subst hW2
    exact hE.2 W rfl
  intro v2
  by_cases hw2 : ∃ W2 : BitVec 64, v2 = .val (.word W2)
  swap
  · exact hoareG_false fun s _ h => hw2 h.1.2.2.2
  obtain ⟨W2, rfl⟩ := hw2
  refine hoareG_pre (P := GI a (LKV (kvI N RK RL VP VL W W2)) (fun Γ _ _ => EI N RK RL VP VL W W2 Γ))
    (ilRest_G ha) ?_
  rintro s _ ⟨⟨hL, hek, hel, -⟩, Γ, q, he, hh', hsc, hE⟩
  refine ⟨?_, Γ, q, he, hh', hsc, hE.1.1, hE.1.2.1, hE.2 W2 rfl, hE.1.2.2⟩
  intro p hp
  simp only [kvI, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact hek
  · exact hel
  · exact hL _ (by simp [kv0])
  · exact hL _ (by simp [kv0])
  · exact hL _ (by simp [kv0])
  · exact hL _ (by simp [kv0])
  · exact hL _ (by simp [kv0])

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.ilRest_G
#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_insert_into_leaf_G
