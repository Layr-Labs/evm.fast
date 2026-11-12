import InitECandidate.Solver.MemSafe.MptH.Common
import InitECandidate.Solver.MemSafe.WaveHelpers.Keccak

set_option autoImplicit false

/-!
# `mpt_nibble_key`: the summary

```
fun {1,1} mpt_nibble_key(1 m, 1 key, 1 klen) {
  if (lds 1 (m + 8)) != 0 {
    keccak256(key, klen, mpt_hash_scratch);
    var 1 nb = alloc(64);
    key_to_nibbles(mpt_hash_scratch, 32, nb);
    return <nb, 64>; }
  var 1 nb2 = alloc(2 * klen);
  key_to_nibbles(key, klen, nb2);
  return <nb2, 2 * klen>; }
```

`mnkSig = ⟨[any, any, any], [], [], false⟩`. **Precondition** `MnkPre`: `2 * klen < 2^64` (the
allocation size of the plain branch does not wrap). Both blocks are caller temporaries, so the
`key_to_nibbles` calls (`[any, any, bufArg 1 2 0]`) are in the footprint; `keccak256` writes only
the scalar global buffer `mpt_hash_scratch` (a `ptr tB40` global, 40 scalar bytes).

Assumed callee summary: `keccak256 : CSumm … (sigKeccak 32 false) []`, `sigKeccak 32 false =
⟨[any, any, buf 32], [], [], false⟩` (the fold table's entry). `key_to_nibbles` is proved
(`Helpers.summ_key_to_nibbles`), `alloc` is builtin.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptH
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def mnkBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "m"), cw 8])) (cw 0))
      (.seq (callD (nm "keccak256") [lv (nm "key"), lv (nm "klen"),
          .var .global (nm "mpt_hash_scratch")])
        (.decCall (nm "nb") .one (nm "alloc") [cw 64]
          (.seq (callD (nm "key_to_nibbles")
              [.var .global (nm "mpt_hash_scratch"), cw 32, lv (nm "nb")])
            (.return (.rstruct [lv (nm "nb"), cw 64])))))
      .skip)
    (.decCall (nm "nb2") .one (nm "alloc") [.panop .mul [cw 2, lv (nm "klen")]]
      (.seq (callD (nm "key_to_nibbles") [lv (nm "key"), lv (nm "klen"), lv (nm "nb2")])
        (.return (.rstruct [lv (nm "nb2"), .panop .mul [cw 2, lv (nm "klen")]]))))

def mnkPs : List (MlS × ShapeHOL) := [(nm "m", .one), (nm "key", .one), (nm "klen", .one)]

theorem entry_mpt_nibble_key : fnEntry Guest.Software.guestFn_mpt_nibble_key =
    (nm "mpt_nibble_key", mnkPs, mnkBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mpt_nibble_key : guestCode (nm "mpt_nibble_key") =
    some (mnkPs, mnkBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 270) (by decide)) ⟨_, rfl⟩
    entry_mpt_nibble_key

def mnkSig : Sig := ⟨[.any, .any, .any], [], [], false⟩

/-- **Caller obligation**: `2 * klen` does not wrap. -/
def MnkPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ KL : BitVec 64, argW vs 2 = some KL → 2 * KL.toNat < 2 ^ 64

def ML (M K KL : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "m") = some (.val (.word M)) ∧ m.lookup (nm "key") = some (.val (.word K)) ∧
    m.lookup (nm "klen") = some (.val (.word KL))

theorem scalarGlob_mpt_hash_scratch : Helpers.ScalarGlob Types.guestC (nm "mpt_hash_scratch") 32 :=
  ⟨Types.tB40, Types.gt_mpt_hash_scratch, fun _ => by rw [Types.ty_B40]; rfl,
    by rw [Types.ty_B40]; decide⟩

theorem sumSpec_mpt_nibble_key {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hK : CSumm σ X Types.guestC H (nm "keccak256") (sigKeccak 32 false) []) :
    SumSpecA σ X Types.guestC H (nm "mpt_nibble_key") mnkSig MnkPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hk2n : CSumm σ X Types.guestC H (nm "key_to_nibbles") Helpers.sigKeyToNibbles [] :=
    csumm_of_summ (Helpers.summ_key_to_nibbles hF.hH Helpers.tagSlots_guestC hX)
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Mv, Kv, KLv, rfl, hsM, hsK, hsKL, hlm, hlk, hlkl⟩ :=
    lookupCode_three code_mpt_nibble_key (by decide) (by decide) (by decide) hl
  obtain ⟨M, rfl⟩ := val_of_shapeEq_one hsM
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hsK
  obtain ⟨KL, rfl⟩ := val_of_shapeEq_one hsKL
  have hKL2 : 2 * KL.toNat < 2 ^ 64 := hpre KL rfl
  set a := actOf Types.guestC H mnkSig [] [.val (.word M), .val (.word K), .val (.word KL)]
    s0 Γ0 p0 with hadef
  have hg : Helpers.ScalarGlob a.Cb (nm "mpt_hash_scratch") 32 := scalarGlob_mpt_hash_scratch
  refine hoareG_conseq (P := PreH a (ML M K KL)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hlm, by rw [hloc]; exact hlk, by rw [hloc]; exact hlkl⟩, Γ0, p0,
      ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [mnkSig] at hrt⟩
  unfold mnkBody
  refine hoareG_seq (R := fun r t => (r = none ∧ ML M K KL t.locals ∧ HHa a t) ∨
      (r ≠ none ∧ HQa a r t)) ?_ (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    ?_
  · refine hoareG_ite (hoareG_pre ?_ fun s _ h => h.1) (hoareG_pre ?_ fun s _ h => h.1)
    · -- the hashed key
      refine hoareG_conseq (Q := RN a) ?_ (fun _ _ h => h) (fun r t _ _ h => Or.inr h)
      refine hoareG_seqSP (L := ML M K KL) rn_of_abn ?_ ?_
      · refine hoareG_callSP ha hK (by simp [sigKeccak]) (by simp [sigKeccak]) ?_
        intro s _ hL Γ p he hh' vs hvs
        obtain ⟨W, hW, h8, hb, hc⟩ := glob_at ha hh' hg
        have hW' : ev s (.var .global (nm "mpt_hash_scratch")) = some (.val (.word W)) := hW
        rw [evs_cons (ev_lw hL.2.1) (evs_cons (ev_lw hL.2.2) (evs_cons hW' evs_nil))] at hvs
        cases hvs
        refine ⟨⟨rfl, fun i pt w hpt hw => ?_⟩, fun x hx => ?_⟩
        · rcases i with _ | _ | _ | i <;> simp [sigKeccak] at hpt hw <;> subst hpt <;> subst hw
          · trivial
          · trivial
          · exact ⟨W, rfl, bufOK_cells (fun x hx => hc x hx)⟩
        · exact foot_of_scell ha hh' (hc x (argCells_kec hx))
      · refine hoareG_allocB ha halloc (SZ := BitVec.ofNat 64 64) (L' := fun Ar m =>
          ML M K KL m ∧ m.lookup (nm "nb") = some (.val (.word Ar)))
          (fun s _ _ => ev_cw _ 64) ?_ ?_
        · intro s st Ar hL
          obtain ⟨h1, h2, h3⟩ := hL
          refine ⟨⟨?_, ?_, ?_⟩, lk_set_self _ _ _⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
        · intro Ar hArn
          have h64 : (BitVec.ofNat 64 64).toNat = 64 := rfl
          have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
          refine hoareG_seqB (L := fun m => ML M K KL m ∧ m.lookup (nm "nb") = some (.val (.word Ar)))
            (Ar := Ar) (n := (BitVec.ofNat 64 64).toNat) rn_of_abn ?_ ?_
          · refine hoareG_callBlk ha hk2n (by simp [Helpers.sigKeyToNibbles])
              (by simp [Helpers.sigKeyToNibbles])
              (L := fun m => ML M K KL m ∧ m.lookup (nm "nb") = some (.val (.word Ar))) ?_
            intro s _ ⟨hL, hnb⟩ ⟨Γ, q, he, hh', hB, hn⟩
            obtain ⟨W, hW, h8, hb, hc⟩ := glob_at ha hh' hg
            have hW' : ev s (.var .global (nm "mpt_hash_scratch")) = some (.val (.word W)) := hW
            refine ⟨[.val (.word W), .val (.word (BitVec.ofNat 64 32)), .val (.word Ar)],
              evs_cons hW' (evs_cons (ev_cw _ 32) (evs_cons (ev_lw hnb) evs_nil)),
              fun Γ' q' hB' => argsOK_k2n (bufOK_blk hB' le_rfl (by omega)) _, fun y hy => ?_⟩
            exact overlap_mono' (argCells_k2n hy) le_rfl (by omega)
          · refine hoareG_return fun t _ ⟨_, hB⟩ v _ => ?_
            exact ⟨by simp, hqa_of_hha (t := emptyLocalsHOLFinite t)
              (hha_congr (s := t) ha.hH rfl rfl rfl rfl (hha_of_blkH hB)) _⟩
    · exact hoareG_skip fun s _ ⟨hL, hH'⟩ => Or.inl ⟨rfl, hL, hH'⟩
  · -- the plain key
    refine hoareG_pre (P := PreH a (ML M K KL)) ?_
      (fun _ _ h => h.elim (fun h => ⟨h.2.1, h.2.2⟩) (fun h => absurd rfl h.1))
    refine hoareG_conseq (Q := RN a) ?_ (fun _ _ h => h) (fun r t _ _ h => h.2)
    refine hoareG_allocB ha halloc (SZ := BitVec.ofNat 64 2 * KL) (L' := fun Ar m =>
      ML M K KL m ∧ m.lookup (nm "nb2") = some (.val (.word Ar)))
      (fun s _ hL => ev_mul2 (ev_cw _ 2) (ev_lw hL.2.2)) ?_ ?_
    · intro s st Ar hL
      obtain ⟨h1, h2, h3⟩ := hL
      refine ⟨⟨?_, ?_, ?_⟩, lk_set_self _ _ _⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
    · intro Ar hArn
      have hSZ : (BitVec.ofNat 64 2 * KL).toNat = 2 * KL.toNat := by
        rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 2) (by omega),
          Nat.mod_eq_of_lt (by omega)]
      refine hoareG_seqB (L := fun m => ML M K KL m ∧ m.lookup (nm "nb2") = some (.val (.word Ar)))
        (Ar := Ar) (n := (BitVec.ofNat 64 2 * KL).toNat) rn_of_abn ?_ ?_
      · refine hoareG_callBlk ha hk2n (by simp [Helpers.sigKeyToNibbles])
          (by simp [Helpers.sigKeyToNibbles])
          (L := fun m => ML M K KL m ∧ m.lookup (nm "nb2") = some (.val (.word Ar))) ?_
        intro s _ ⟨⟨hm, hk, hkl⟩, hnb⟩ _
        refine ⟨[.val (.word K), .val (.word KL), .val (.word Ar)],
          evs_cons (ev_lw hk) (evs_cons (ev_lw hkl) (evs_cons (ev_lw hnb) evs_nil)),
          fun Γ' q' hB' => argsOK_k2n (bufOK_blk hB' le_rfl (by omega)) _, fun y hy => ?_⟩
        exact overlap_mono' (argCells_k2n hy) le_rfl (by omega)
      · refine hoareG_return fun t _ ⟨_, hB⟩ v _ => ?_
        exact ⟨by simp, hqa_of_hha (t := emptyLocalsHOLFinite t)
          (hha_congr (s := t) ha.hH rfl rfl rfl rfl (hha_of_blkH hB)) _⟩

theorem sumSpec_mpt_nibble_key_guestJL {σ : Type}
    (hK : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "keccak256")
      (sigKeccak 32 false) []) :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "mpt_nibble_key") mnkSig
      MnkPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_mpt_nibble_key Wire.foldOK_guestJL hK

end InitECandidate.Solver.MemSafe.MptH

#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_mpt_nibble_key
#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_mpt_nibble_key_guestJL
