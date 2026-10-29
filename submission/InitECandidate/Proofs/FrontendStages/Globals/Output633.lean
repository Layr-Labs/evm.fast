import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data633
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody633_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "d"), none)) "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 18446744069414584321#64]]

def globalBody633_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody633_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 1#64)) globalBody633_0 globalBody633_1

def globalBody633_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "d")

def globalBody633_4 : Prog (BitVec 64) :=
.seq globalBody633_2 globalBody633_3

def globalBody633_5 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody633_4

def globalBody633_6 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody633_5

def globalData633 : Decl (BitVec 64) :=
.function { name := "p256_fp_sub", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody633_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput633 := Pancake.PanLang.declToHOL globalData633
end InitECandidate.Proofs.FrontendStages.Declarations
