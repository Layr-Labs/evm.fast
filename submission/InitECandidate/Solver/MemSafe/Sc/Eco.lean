import InitECandidate.Solver.MemSafe.Sc.GcFinal
import InitECandidate.Solver.MemSafe.Calls.Dlg

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

/-!
# `EcoHyp`: `ext_code_of` returns a bounded code length

```
fun {1,1} ext_code_of(1 addr) {
  var 1 a = get_account(addr);
  var {1,1} c = get_code(lds 1 (a + ACCT_CODE_HASH), addr);
  return c;
}
```
The memory-safety part is `ext_code_of`'s fold entry (`Frames.eoc_mem`); the value part is a hybrid
proof (the fold checker's invariant plus the result fact `WR`), with `get_code` as a callee whose
value fact is `funSpec_get_code_V`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

def ecoBody : ProgHOL 64 :=
  .decCall (nm "a") .one (nm "get_account") [lv (nm "addr")]
    (.decCall (nm "c") (.comb [.one, .one]) (nm "get_code")
      [.load .one (.op .add [lv (nm "a"), cw 48]), lv (nm "addr")] (.return (lv (nm "c"))))

def ecoParams : List (MlS × ShapeHOL) := [(nm "addr", .one)]

theorem entry_eco : fnEntry Guest.Software.guestFn_ext_code_of =
    (nm "ext_code_of", ecoParams, ecoBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_eco : guestCode (nm "ext_code_of") =
    some (ecoParams, ecoBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 543) (by decide)) ⟨_, rfl⟩
    entry_eco

def eoE : CEnv := ⟨upg Types.guestC Frames.eocCs, ShardsJL.tab26, Frames.eocSg, Frames.eocCs⟩

def Ci : AEnv := initEnv ecoParams Frames.eocSg.params 0 ⟨[], []⟩

def sgEGa : Sig := ⟨[.buf 20], [], [], true⟩
def sgEGc : Sig := ⟨[.any, .any], [], [], true⟩
def argsEGa : List (ExpHOL 64) := [lv (nm "addr")]
def argsEGc : List (ExpHOL 64) :=
  [.load .one (.op .add [lv (nm "a"), cw 48]), lv (nm "addr")]

def Ca : AEnv := bindRes Ci (argsEGa.map (aev eoE.C Ci chkFuel)) sgEGa .one (nm "a")
def Cc : AEnv := bindRes Ca (argsEGc.map (aev eoE.C Ca chkFuel)) sgEGc (.comb [.one, .one]) (nm "c")

def OE2 : AOut := restO (nm "c") Ca Ond
def OE1 : AOut := restO (nm "a") Ci OE2

theorem fs_ega : findSig eoE Ci (nm "get_account") (argsEGa.map (aev eoE.C Ci chkFuel)) =
    some sgEGa := by rfl
theorem fs_egc : findSig eoE Ca (nm "get_code") (argsEGc.map (aev eoE.C Ca chkFuel)) =
    some sgEGc := by rfl
theorem chk_eretc : chk eoE Cc (.return (lv (nm "c"))) = some Ond := by rfl

/-- The context of the `ext_code_of` proof. -/
structure EcH (a : Act σ) : Prop where
  ha : ActOK a guestCtx
  hE : eoE.C = a.C
  hT : CTabSound σ guestCtx a.Cb a.H eoE.tab
  hsg : eoE.sg = a.sg
  hcE : eoE.caps = a.caps
  hWS : WinSpecs σ guestCtx
  hH : a.H = Hooks.guestHooksR (σ := σ)
  hCb : a.Cb = Types.guestC

section sound
variable {a : Act σ}

theorem e2_sound (h : EcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Ca Γ Θ s ∧ True)
      (.decCall (nm "c") (.comb [.one, .one]) (nm "get_code") argsEGc (.return (lv (nm "c"))))
      (fun r t => SPost a eoE.sg.ret OE2 Γ Θ r t ∧ WR r) := by
  refine dcW h.ha h.hE h.hT h.hsg h.hcE fs_egc (funSpec_get_code_V (σ := σ)) WR
    (fun r hab => wr_abn hab) (fun _ _ => True) ExC Γ Θ (ok := Ond) ?_ ?_
  · intro s st vs callee v Γ' hig _ hvs hLc hext hsh hGe hav
    obtain ⟨p, hh, ht, hl⟩ := hig
    have hlen : vs.length = 2 := by rw [Rec.evs_len2 hvs]; rfl
    have hcap : capSub gcCaps a.caps = true := by rw [← h.hcE]; decide
    have hreq0 : ReqOK gcCaps s Γ := req_sub hcap (req_now h.ha hh)
    have hreq : ReqOK gcCaps (callEntryStateHOLFinite s callee) Γ := hreq0
    rw [h.hCb, h.hH] at hGe
    have hval := hLc (by simp [Good]) (by simp [Abortive]) Γ hGe
      ⟨p, hh.2.1, argsOK_any (by simp [gcSig]) (by rw [hlen]; rfl)⟩ hreq
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
    match ws, hws with
    | [x, y], _ => exact ⟨x, y, lk_set_self _ _ _, hval _ rfl x y rfl⟩
  · intro Γ Θ
    refine hoareG_and' (hoareG_pre (chk_sound h.ha h.hE h.hT h.hsg h.hcE h.hWS (.return (lv (nm "c")))
      Cc Ond chk_eretc Γ Θ) (fun s _ hs => hs.1))
      (hoareG_return fun s hs hp v hv rr hrr => ?_)
    cases hrr
    obtain ⟨x, y, hl, hb⟩ := hp.2
    rw [ev_lv, hl] at hv
    cases hv
    intro v' hv' x' y' hxy
    cases hv'
    simp only [wv, List.map, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq, and_true] at hxy
    obtain ⟨-, rfl⟩ := hxy
    exact hb

theorem e1_sound (h : EcH a) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Ci Γ Θ s ∧ True) ecoBody
      (fun r t => SPost a eoE.sg.ret OE1 Γ Θ r t ∧ WR r) := by
  unfold ecoBody
  refine dcW h.ha h.hE h.hT h.hsg h.hcE fs_ega (funSpec_true (σ := σ) (X := guestCtx) _) WR
    (fun r hab => wr_abn hab) (fun _ _ => True) (fun _ _ => True) Γ Θ (ok := OE2) ?_ ?_
  · exact fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial
  · exact fun Γ Θ => e2_sound h Γ Θ

end sound

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.code_eco
#print axioms InitECandidate.Solver.MemSafe.Sc.e1_sound
