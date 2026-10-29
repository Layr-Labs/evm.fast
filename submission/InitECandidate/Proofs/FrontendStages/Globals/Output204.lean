import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data204
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody204_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 30#64]

def globalBody204_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody204_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))
  (Flapjack.Exp.const 0#64)) globalBody204_0 globalBody204_1

def globalBody204_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 31#64]

def globalBody204_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "lim")
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))) globalBody204_3 globalBody204_1

def globalBody204_5 : Prog (BitVec 64) :=
.seq globalBody204_2 globalBody204_4

def globalBody204_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def globalBody204_7 : Prog (BitVec 64) :=
.seq globalBody204_5 globalBody204_6

def globalBody204_8 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "sz"]) globalBody204_7

def globalData204 : Decl (BitVec 64) :=
.function { name := "ssz_fixed_list_count", inline := false, exported := false, params := [("len", Flapjack.Shape.one), ("sz", Flapjack.Shape.one), ("lim", Flapjack.Shape.one)], body := globalBody204_8, returnShape := (Flapjack.Shape.one) }
def globalOutput204 := Pancake.PanLang.declToHOL globalData204
end InitECandidate.Proofs.FrontendStages.Declarations
