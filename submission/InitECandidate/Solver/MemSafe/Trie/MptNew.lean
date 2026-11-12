import InitECandidate.Solver.MemSafe.Trie.MptSet
import InitECandidate.Solver.MemSafe.Dn.Dwtm
import InitECandidate.Solver.MemSafe.Dn.LoopDefs
import InitECandidate.Solver.MemSafe.Alloc

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `mpt_new`: a fresh 16-byte handle whose root cell is `RF`

```
fun 1 mpt_new(1 root_node, 1 secured) {
  var 1 m = alloc(16); st m + 0, root_node; st m + 8, secured; return m; }
```
`sumSpecA_mpt_new`: signature `mnwSig = ⟨[.any, .any], [.fresh 16], [], false⟩`, Pre `RF Γ root_node`,
the returned block is fresh (outside `Γ'`) and its root cell is `RF Γ'`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

def mnwBody : ProgHOL 64 :=
  .decCall (nm "m") .one (nm "alloc") [cw 16]
    (.seq (.store (.op .add [lv (nm "m"), cw 0]) (lv (nm "root_node")))
      (.seq (.store (.op .add [lv (nm "m"), cw 8]) (lv (nm "secured")))
        (.return (lv (nm "m")))))

def params_mnw : List (MlS × ShapeHOL) := [(nm "root_node", .one), (nm "secured", .one)]

theorem entry_mnw : fnEntry Guest.Software.guestFn_mpt_new =
    (nm "mpt_new", params_mnw, mnwBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_mnw : guestCode (nm "mpt_new") = some (params_mnw, mnwBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 268) (by decide)) ⟨_, rfl⟩
    entry_mnw


def mnwSig : Sig := ⟨[.any, .any], [.fresh 16], [], false⟩

def MnwPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ R S : BitVec 64, vs = [.val (.word R), .val (.word S)] ∧ RF Γ R

theorem sumSpecA_mpt_new :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "mpt_new") mnwSig MnwPre
      (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M : BitVec 64, v = .val (.word M) ∧ HRecU p0 Γ' p' t.memory M) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs p0 Γ' p' mm v => ∃ M : BitVec 64, v = .val (.word M) ∧
    HRecU p0 Γ' p' mm M) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_mnw hl
  obtain ⟨R, S, rfl, hR⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) mnwSig [] _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let kv0 : List (MlS × BitVec 64) := [(nm "root_node", R), (nm "secured", S)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' mm v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ M : BitVec 64, v = .val (.word M) ∧ HRecU a.p0 Γ' p' mm M
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => RF Γ R))
    (Q := GP a (fun _ => False) (fun _ _ _ => True) Rv0) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hR⟩
  · intro r t _ _ h
    exact gp_final h
  unfold mnwBody
  have hfm : ∀ p ∈ kv0, p.1 ≠ nm "m" := by lkv_fresh [kv0]
  refine gp_decCall ha (sumA_of_csumm Dn.alloc_R) (MemSafe.allocSpec_alloc hX) (by simp) (fun h => h)
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "m") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
    (E1 := fun v Γ q M => RF Γ R ∧ ∀ H : BitVec 64, v = .val (.word H) →
      (∀ c : BitVec 64, Overlap H.toNat 16 c → ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧
        ¬ p0.Allocated c.toNat) ∧ H.toNat % 8 = 0 ∧ heapBase ≤ H.toNat ∧ H.toNat + 16 ≤ q.hp ∧
        H.toNat + 16 ≤ heapEnd)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True)
    (fun s Γ q _ hL hh' hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
      fun v hv _ => ⟨fits_ext co.ext hE, fun H hH => ?_⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfm v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ h => h.elim)
  · rw [evs_cons (ev_cw s 16) evs_nil] at hvs
    cases hvs
    subst hH
    subst hv
    obtain ⟨w, hw, hfb⟩ := co.ret _ rfl 0 _ H rfl (by simp [flattenHOL])
    simp only [argW, List.getElem?_cons_zero, wordOf, Option.some.injEq] at hw
    subst hw
    have e8 : 1 * (BitVec.ofNat 64 16).toNat + 0 = 16 := by decide
    rw [e8] at hfb
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨-, -, p', hp', hord', hmo, hq⟩ := hLc (by simp [Good]) _ q rfl hpe (heap_ord co.heap0)
    obtain ⟨Q8, hQ8, h8', ⟨hb1, hb2⟩, -⟩ := hq _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hQ8
    subst hQ8
    have hq' : p' = q' := by
      have := co.heap.2.1
      rw [hp'] at this
      exact Option.some.inj this
    subst hq'
    refine ⟨fun c hc => ?_, h8', hb1, by simpa using hb2, ?_⟩
    · obtain ⟨hfr, hni⟩ := hfb.2 c hc
      obtain ⟨hna, hal⟩ := fresh_na (heap_ord co.heap0) (heap_ord co.heap) co.mono hfr
      exact ⟨hni, hal, fun h0 => hna (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 h0)⟩
    · have h2 := (heap_ord co.heap).2.1
      have h1 := hb2
      simp at h1
      omega
  intro v
  by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨H, rfl⟩ := hw
  set kvN : List (MlS × BitVec 64) := (nm "m", H) :: kv0 with hkvN
  let BF : Gam → Ptrs → Prop := fun Γ q => (∀ c : BitVec 64, Overlap H.toNat 16 c →
    ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧ ¬ p0.Allocated c.toNat) ∧ H.toNat % 8 = 0 ∧
    heapBase ≤ H.toNat ∧ H.toNat + 16 ≤ q.hp ∧ H.toNat + 16 ≤ heapEnd
  refine hoareG_pre (P := GI a (LKV kvN) (fun Γ q _ => RF Γ R ∧ BF Γ q)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 H rfl⟩)
  have hmN : (nm "m", H) ∈ kvN := by simp [kvN]
  have hrN : (nm "root_node", R) ∈ kvN := by simp [kvN, kv0]
  have hsN : (nm "secured", S) ∈ kvN := by simp [kvN, kv0]
  have hEc : ∀ (Γ : Gam) (q : Ptrs), BF Γ q → ∀ c : BitVec 64, Overlap H.toNat 16 c →
      ¬ InObj Γ c.toNat ∧ ¬ p0.Allocated c.toNat := fun Γ q h c hc =>
    ⟨(h.1 c hc).1, (h.1 c hc).2.2⟩
  have e0 : (H + BitVec.ofNat 64 0).toNat = H.toNat := by simp
  have e8 : ∀ (Γ : Gam) (q : Ptrs), BF Γ q → (H + BitVec.ofNat 64 8).toNat = H.toNat + 8 := by
    intro Γ q h
    have hE : heapEnd < 2 ^ 63 := by decide
    have h5 := h.2.2.2.2
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by omega)]
    exact Nat.mod_eq_of_lt (by omega)
  have hne8 : ∀ (Γ : Gam) (q : Ptrs), BF Γ q → H ≠ H + BitVec.ofNat 64 8 := by
    intro Γ q h he
    have := e8 Γ q h
    rw [← he] at this
    omega
  let EA : Gam → Ptrs → Mem → Prop := fun Γ q mm => RF Γ R ∧ BF Γ q ∧ rd mm H = R
  -- `st m + 0, root_node`
  refine gp_seq (L := LKV kvN) (E := EA) ?_ ?_
  · refine gp_stOut ha (A := H + BitVec.ofNat 64 0) ?_ ?_ ?_ ?_
    · intro s hL
      rw [ev_add2 (ev_lw (hL _ hmN)) (ev_cw s 0)]
    · intro Γ q M hE
      rw [e0]
      exact hEc Γ q hE.2 H ⟨hE.2.2.1, by omega, by omega⟩
    · intro s v hL hv
      rw [ev_lw (hL _ hrN)] at hv
      cases hv
      exact ⟨R, rfl⟩
    · intro s Γ q V hL hE hv
      rw [ev_lw (hL _ hrN)] at hv
      have := Option.some.inj hv
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
      subst this
      exact ⟨hE.1, hE.2, by simp [Struct.rd_upd]⟩
  refine gp_seq (L := LKV kvN) (E := EA) ?_ ?_
  · refine gp_stOut ha (A := H + BitVec.ofNat 64 8) ?_ ?_ ?_ ?_
    · intro s hL
      rw [ev_add2 (ev_lw (hL _ hmN)) (ev_cw s 8)]
    · intro Γ q M hE
      have h := hEc Γ q hE.2.1 (H + BitVec.ofNat 64 8) ⟨by rw [e8 Γ q hE.2.1]; have := hE.2.1.2.1; omega,
        by rw [e8 Γ q hE.2.1]; omega, by rw [e8 Γ q hE.2.1]; have := hE.2.1.2.2.2.1; omega⟩
      exact h
    · intro s v hL hv
      rw [ev_lw (hL _ hsN)] at hv
      cases hv
      exact ⟨S, rfl⟩
    · intro s Γ q V hL hE hv
      rw [ev_lw (hL _ hsN)] at hv
      have := Option.some.inj hv
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
      subst this
      refine ⟨hE.1, hE.2.1, ?_⟩
      rw [Struct.rd_upd, if_neg (hne8 Γ q hE.2.1)]
      exact hE.2.2
  · refine gp_ret ha.hH (L2 := fun _ => False) (E2 := fun _ _ _ => True) (Rv := Rv0) ?_
    intro s Γ q hs hL he hh hE v hv
    rw [ev_lw (hL _ hmN)] at hv
    cases hv
    refine ⟨fun i r w hr hw => ?_, H, rfl, ?_⟩
    · rcases i with _ | i
      · have hr' : ([RT.fresh 16] : List RT)[0]? = some r := hr
        simp at hr'
        subst hr'
        simp [flattenHOL] at hw
        subst hw
        refine ⟨hE.2.1.2.1, fun c hc => ⟨?_, (hE.2.1.1 c hc).1⟩⟩
        have h1 := (hE.2.1.1 c hc).2.2
        obtain ⟨hc1, hc2, hc3⟩ := hc
        have h5 := hE.2.1.2.2.1
        have h6 := hE.2.1.2.2.2.1
        unfold Ptrs.Allocated at h1
        unfold Fresh
        left
        show p0.hp ≤ c.toNat ∧ c.toNat < q.hp
        omega
      · have hr' : ([RT.fresh 16] : List RT)[i + 1]? = some r := hr
        simp at hr'
    · have h8 := e8 Γ q hE.2.1
      have hbf := hE.2.1
      refine ⟨⟨hbf.2.1, hbf.2.2.1, hbf.2.2.2.1, (hbf.1 H ⟨hbf.2.1, by omega, by omega⟩).1, ?_, ?_⟩,
        fun c hc => (hbf.1 c hc).2.2⟩
      · have := (hbf.1 (H + BitVec.ofNat 64 8) ⟨by rw [h8]; omega, by rw [h8]; omega,
          by rw [h8]; omega⟩).1
        rwa [h8] at this
      · rw [hE.2.2]; exact hE.1

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_mpt_new
