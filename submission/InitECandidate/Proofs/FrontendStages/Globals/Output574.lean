import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data574
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody574_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 0#64])

def globalBody574_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody574_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) globalBody574_0 globalBody574_1

def globalBody574_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "da",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"), Flapjack.Exp.const 3#64],
    Flapjack.Exp.const 20#64]

def globalBody574_4 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "da", Flapjack.Exp.const 100#64])

def globalBody574_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody574_4 globalBody574_1

def globalBody574_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "da", Flapjack.Exp.const 3000#64])

def globalBody574_7 : Prog (BitVec 64) :=
.seq globalBody574_5 globalBody574_6

def globalBody574_8 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "da"]) globalBody574_7

def globalBody574_9 : Prog (BitVec 64) :=
.seq globalBody574_3 globalBody574_8

def globalBody574_10 : Prog (BitVec 64) :=
.decCall ("da") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody574_9

def globalBody574_11 : Prog (BitVec 64) :=
.seq globalBody574_2 globalBody574_10

def globalBody574_12 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code")]) globalBody574_11

def globalBody574_13 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody574_12

def globalData574 : Decl (BitVec 64) :=
.function { name := "calculate_delegation_cost", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody574_13, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput574 := Pancake.PanLang.declToHOL globalData574
end InitECandidate.Proofs.FrontendStages.Declarations
