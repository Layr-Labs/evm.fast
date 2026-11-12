import InitECandidate.Solver.Band3.GetStorageOriginal
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Band item #16: `get_storage` (sonnet-store)

```
fun {1,1,1,1} get_storage(1 addr, 1 key) {
  var 1 k = sk_make(addr, key);
  htab_set(lds 1 (ts + TS_STOR_READS), k, 1);
  var {1,1} v = stor_lookup(lds 1 (ts + TS_STOR_WRITES), addr, key);
  if v.0 != 0 { return lds {1,1,1,1} (v.1); }
  v = stor_lookup(lds 1 (bs + BS_STOR_WRITES), addr, key);
  if v.0 != 0 { return lds {1,1,1,1} (v.1); }
  record_pre_state_read(addr);
  var {1,1,1,1} r = ws_get_storage(addr, key);
  return r; }
```

**`gs_condCost hGT`**: `CondCost … "get_storage" gsSig (fun _ s _ => JrNZ s) gsB`.
`JrNZ` (the `sk_buf` global is non-null, `PreOpX`'s last conjunct) gives `sk_make`'s `ReqOK`. The
key buffer of `htab_set` is `sk_make`'s result (`RetOK`: `fits (ptr tB64)`, hence a `BufOK` of 52
bytes: `b64_buf52`), and the table is `ts`'s slot 3 (`ptr tHTh52`, read off `G`: `ldG_fits`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.Spec.Mpt.Leaves (ev_load1_inv' ev_add2_inv')

variable {σ : Type}

/-! ## Facts read off `G` -/

/-- `lds 1 (g + off)` for a global named by an `MlS`. -/
def ldG' (g : MlS) (off : Nat) : ExpHOL 64 := .load .one (.op .add [.var .global g, cw off])

/-- The word at slot `k` of the object a nullable global points at (`ts`, `bs`): when the load
`lds 1 (g + 8k)` succeeds and the slot is a `ptr th`, the loaded word fits `ptr th`. -/
theorem ldG_fits {s : State σ} (hs : InCtx s guestCtx) {H : Hooks σ} {Γ : Gam}
    (hG : G Types.guestC H Γ s) {g : MlS} {t : Nat}
    (hgt : Types.guestC.GT.lookup g = some (.nptr t)) {k th off : Nat} (hoff : off = 8 * k)
    (hlt : off < 4096) (hk : 8 * k + 8 ≤ (Types.guestC.ty t).minSz)
    (hsl : (Types.guestC.ty t).slot k = .ptr th) {v : ValueHOL 64}
    (hv : ev s (ldG' g off) = some v) : ∃ T, v = .val (.word T) ∧ Fits Γ (.ptr th) T := by
  obtain ⟨a, ha, hd, rfl⟩ := ev_load1_inv' hv
  obtain ⟨w, c, hw, hc, he⟩ := ev_add2_inv' ha
  cases he
  have hg : s.globals.lookup g = some (.val (.word w)) := hw
  rw [ev_cw] at hc
  cases hc
  obtain ⟨p, -, -, hL, hFl, -, hGl, -⟩ := hG
  obtain ⟨u, hu, hfit⟩ := hGl g _ hgt
  have huw : u = w := by
    have h1 : gword s g = some w := by unfold gword; rw [hg]
    rw [hu] at h1; exact Option.some.inj h1
  subst huw
  rcases hfit with hn | ⟨o, ho, hob, hot⟩
  · exfalso
    have hns := MemSafe.nullSafe_guestCtx (u + BitVec.ofNat 64 off) (by rw [← hs.2.1]; exact hd)
    rw [BitVec.toNat_add, BitVec.toNat_ofNat] at hns
    unfold heapBase at hns
    unfold nullMax at hn
    have := u.isLt
    rw [Nat.mod_eq_of_lt (by omega)] at hns
    rw [Nat.mod_eq_of_lt (by omega)] at hns
    omega
  · have hsz := (Frames.lay_obj hL ho).2.2.2.1
    rw [hot] at hsz
    have hfk := hFl o ho k (by unfold Obj.HasSlot; omega)
    rw [hot, hsl] at hfk
    refine ⟨_, rfl, ?_⟩
    have hc : o.cell k = u + BitVec.ofNat 64 off := by
      unfold Obj.cell; rw [hob, hoff]
    rw [hc] at hfk
    exact hfk

theorem b64_scalar : ∀ k, (Types.guestC.ty tB64).slot k = .scalar := slot_all (by decide) rfl

/-- `sk_make`'s result (`fits (ptr tB64)`) is a 52-byte writable buffer. -/
theorem b64_buf52 {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs}
    (hG : G Types.guestC H Γ s) (hp : ptrsOf s = some p)
    {K : BitVec 64} (hK : Fits Γ (.ptr tB64) K) : BufOK Types.guestC Γ p K.toNat 52 := by
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  obtain ⟨o, ho, hob, hot⟩ := hK
  have hsz := (Frames.lay_obj hL ho).2.2.2.1
  rw [hot] at hsz
  have hmin : (Types.guestC.ty tB64).minSz = 64 := rfl
  refine Struct.bufOK_obj hord hL ho (fun k => by rw [hot]; exact b64_scalar k) ?_ ?_
  · unfold Obj.lo; rw [hob]
  · unfold Obj.hi; rw [hob]; omega

/-! ## The body -/

def gsLoadV : ExpHOL 64 := .load sh4 (.rfield 1 (lv (nm "v")))

def gsGuardV : ProgHOL 64 :=
  .ite (.cmp .notEqual (.rfield 0 (lv (nm "v"))) (cw 0)) (.return gsLoadV) .skip

def gsBody : ProgHOL 64 :=
  .decCall (nm "k") .one (nm "sk_make") [lv (nm "addr"), lv (nm "key")]
    (.seq (callD (nm "htab_set") [ldG "ts" 24, lv (nm "k"), cw 1])
      (.decCall (nm "v") (.comb [.one, .one]) (nm "stor_lookup")
        [ldG "ts" 32, lv (nm "addr"), lv (nm "key")]
        (.seq gsGuardV
          (.seq (.call (some (some (.local, nm "v"), none)) (nm "stor_lookup")
              [ldG "bs" 32, lv (nm "addr"), lv (nm "key")])
            (.seq gsGuardV
              (.seq (callD (nm "record_pre_state_read") [lv (nm "addr")])
                (.decCall (nm "r") sh4 (nm "ws_get_storage") [lv (nm "addr"), lv (nm "key")]
                  (.return (lv (nm "r")))))))))) 

theorem entry_gs : fnEntry Guest.Software.guestFn_get_storage =
    (nm "get_storage", params_wgs, gsBody, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_gs : guestCode (nm "get_storage") = some (params_wgs, gsBody, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 378) (by decide)) ⟨_, rfl⟩
    entry_gs

/-! ## The cost -/

def bSk : Nat := 147573952589676412938

def gsB : Nat :=
  1 + bSk + (1 + Wit.bHtabSet + 0 + (1 + bStor + (max 0 0 + (1 + bStor + 0 + (max 0 0 +
    (1 + bRpsr + 0 + (1 + wgsB + 0)))))))

/-- `get_storage`'s signature (`Sigs3`). -/
def gsSig : Sig := ⟨[.buf 20, .any], [], [], true⟩

/-- `sk_make` (`tab26[400]`). -/
theorem cs_sk : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "sk_make")
    ⟨[.any, .any], [.fits (.ptr 24)], [], false⟩ [⟨nm "sk_buf", 24, [], false⟩] :=
  ctab% Rec.tab26_guestR

/-- `htab_set` at the `tHTh52` header (`tab26[509]`). -/
theorem cs_set52 : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_set")
    (HtabEntries.setSig tHTh52) (HtabEntries.capsHT tHTh52) :=
  ctab% Rec.tab26_guestR

theorem capsHT_any : ∀ c ∈ HtabEntries.capsHT tHTh52, c.g = anyG := by
  simp [HtabEntries.capsHT]

/-- `JrNZ` survives a summary step of a function that writes neither `journal` nor `sk_buf`. -/
theorem jrNZ_core {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t t' : State σ} {callee : Lcs} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hPG : Frames.JrPG C) (hout : Frames.JrOut sg.gw)
    (hJ : Frames.JrNZ s)
    (hcore : SumCore C H sg PW Γ (callEntryStateHOLFinite s callee) vs r t Γ' p p')
    (ht : t'.globals = t.globals) :
    Frames.JrNZ t' :=
  Frames.jrNZ_congr ht (Frames.jrNZ_of_lookup
    (fun g hg => hcore.2.2.2.2.2.2.2.1 g (hPG g hg) (hout g hg))
    (Frames.jrNZ_congr (s := s) rfl hJ))

theorem jrPG_guest : Frames.JrPG Types.guestC := by decide
theorem jrOut_nil : Frames.JrOut [] := by simp [Frames.jrOut_iff]

/-- The thread invariant of `get_storage`: `addr` is a 20-byte buffer and `JrNZ`. -/
def AuxJ (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  AuxA (nm "addr") 20 s Γ p ∧ Frames.JrNZ s

/-- After `sk_make`: also the key buffer local `k`. -/
def AuxK (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  AuxJ s Γ p ∧ ∃ K : BitVec 64, s.locals.lookup (nm "k") = some (.val (.word K)) ∧
    BufOK Types.guestC Γ p K.toNat 52

theorem argsOK_set52 {Γ : Gam} {p : Ptrs} {T K : BitVec 64} (hT : Fits Γ (.ptr tHTh52) T)
    (hK : BufOK Types.guestC Γ p K.toNat 52) :
    ArgsOK Types.guestC Γ p (HtabEntries.setSig tHTh52).params
      [.val (.word T), .val (.word K), .val (.word 1)] := by
  have hv : HtabEntries.valPT tHTh52 = .any := by decide
  have hk : htKL tHTh52 = 52 := by decide
  refine ⟨rfl, fun i pt v hpt hv' => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [HtabEntries.setSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hv'
    subst hpt hv'; exact ⟨T, rfl, hT⟩
  · simp only [HtabEntries.setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt hv'
    subst hpt hv'; exact ⟨K, rfl, by rw [hk]; exact hK⟩
  · simp only [HtabEntries.setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt hv'
    subst hpt hv'; rw [hv]; trivial
  · simp [HtabEntries.setSig] at hpt

set_option linter.unusedVariables false in
/-- **Band item #16**: `get_storage`'s conditional cost, from `G` and `JrNZ`. -/
theorem gs_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage") gsSig
      (fun _ s _ => Frames.JrNZ s) gsB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_gs (by decide) hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hJ⟩ hg
  obtain ⟨w, hw, hbw⟩ := auxA_init2 (sg := gsSig) rfl hargs (callee := callee) hA
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (Hooks.guestHooksR (σ := σ)) AuxJ)
      gsBody gsB := by
    unfold gsBody gsB
    -- `k = sk_make(addr, key)`
    refine costP_decCall_S hH (Aux' := AuxK) (PreC := fun _ _ => True) cs_sk
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "sk_make") (B := bSk) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee => ⟨hargs_any (by simp) rfl hvs, ?_⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs _ hcore hq => ?_) ?_
    · intro c hc hne
      simp only [List.mem_singleton] at hc
      subst hc
      obtain ⟨e, he, het, hgw⟩ := Frames.sk_obj hG hA.2
      exact ⟨e, he, het, hgw⟩
    · obtain ⟨K, rfl⟩ := val_of_shapeEq_one' hsh
      have hstp := stp_of_core_s hH hG hcore
      refine ⟨⟨auxA_step hA.1 hstp (lk_sv (by decide) _ st s.locals),
        jrNZ_core jrPG_guest jrOut_nil hA.2 hcore rfl⟩, K, lk_set_self _ _ _, ?_⟩
      have hfit : Fits Γ' (.ptr tB64) K := by
        have := hcore.2.2.2.2.2.2.2.2.2 (.val (.word K)) rfl 0 (.fits (.ptr 24)) K rfl
          (by simp [flattenHOL])
        exact this
      exact b64_buf52 (s := setVarHOLFinite (nm "k") (.val (.word K)) { st with locals := s.locals })
        ((Frames.G_locFree hH st _ _).mpr hcore.2.2.2.2.2.1)
        ((Frames.ptrsOf_congr rfl).trans hcore.2.1) hfit
    -- `htab_set(lds (ts + 24), k, 1)`
    refine costP_seq_callD_S hH (Aux' := AuxJ) (PreC := fun _ _ => True) cs_set52
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "htab_set") (B := Wit.bHtabSet) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s hs0 Γ p hG _ hA vs hvs callee => ?_)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs _ hcore hq =>
        ⟨auxA_step hA.1.1 (stp_of_core_s hH hG hcore) rfl,
          jrNZ_core (sg := HtabEntries.setSig tHTh52) jrPG_guest (by simp [HtabEntries.setSig, Frames.jrOut_iff]) hA.1.2 hcore rfl⟩) ?_
    · obtain ⟨a1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨a2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      obtain ⟨a3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
      rw [evs_nil] at hr3
      cases hr3
      obtain ⟨K, hKl, hKb⟩ := hA.2
      rw [ev_lv, hKl] at h2
      cases h2
      rw [ev_cw] at h3
      cases h3
      obtain ⟨T, rfl, hT⟩ := ldG_fits hs0 hG (g := nm "ts") (t := tTS) (by decide) (k := 3)
        (th := tHTh52) (off := 24) rfl (by omega) (by decide) rfl h1
      exact ⟨argsOK_set52 hT hKb, reqOK_anyG capsHT_any⟩
    -- `var v = stor_lookup(lds (ts + 32), addr, key)`
    refine costP_decCall_S hH (Aux' := AuxJ) (PreC := fun _ _ => True) cs_stor
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "stor_lookup") (B := bStor) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee => ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v _ hG hA hvs _ hcore hq =>
        ⟨auxA_step hA.1 (stp_of_core_s hH hG hcore) (lk_sv (by decide) v st s.locals),
          jrNZ_core jrPG_guest jrOut_nil hA.2 hcore rfl⟩) ?_
    unfold gsGuardV
    refine costP_guard ?_
    -- `v = stor_lookup(lds (bs + 32), addr, key)`
    refine costP_seq_callA_S hH (Aux' := AuxJ) (PreC := fun _ _ => True) cs_stor
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "stor_lookup") (B := bStor) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee => ⟨hargs_any (by simp) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs _ hcore hq =>
        ⟨auxA_step hA.1 (stp_of_core_s hH hG hcore) (lk_set_ne _ _ (by decide)),
          jrNZ_core jrPG_guest jrOut_nil hA.2 hcore rfl⟩) ?_
    refine costP_guard ?_
    -- `record_pre_state_read(addr)`
    refine costP_seq_callD_S hH (Aux' := AuxJ) (PreC := fun _ _ => True) cs_rpsr
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "record_pre_state_read") (B := bRpsr) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ hA vs hvs callee => by
        obtain ⟨A, hAl, hb⟩ := hA.1
        exact ⟨argsOK_addr20 rfl hAl hb hvs, reqOK_anyG rpsrCaps_any⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs _ hcore hq =>
        ⟨auxA_step hA.1 (stp_of_core_s hH hG hcore) rfl,
          jrNZ_core (sg := ⟨[.buf 20], [], [], true⟩) jrPG_guest (by simp [Frames.jrOut_iff]) hA.2 hcore rfl⟩) ?_
    -- `var r = ws_get_storage(addr, key); return r`
    refine Band.costP_decCall (wgs_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, -⟩ := hP
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        hargs_any (by simp [wgsSig]) rfl hvs, trivial⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_return _)
  exact main s hs ⟨Γ, p, hG, hp, ⟨w, by rw [hloc]; exact hw, hbw⟩, hJ⟩ hg

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.ldG_fits
#print axioms InitECandidate.Solver.Band3.b64_buf52
#print axioms InitECandidate.Solver.Band3.gs_condCost
