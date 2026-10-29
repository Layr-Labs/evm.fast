import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data603
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody603_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stipend" (Flapjack.Exp.const 2300#64)

def globalBody603_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody603_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vz") (Flapjack.Exp.const 0#64)) globalBody603_0 globalBody603_1

def globalBody603_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "s"])

def globalBody603_4 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "stipend"]) globalBody603_3

def globalBody603_5 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "extra_gas"]) globalBody603_4

def globalBody603_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas_left")
  (Flapjack.Exp.var Flapjack.VarKind.local "need")) globalBody603_5 globalBody603_1

def globalBody603_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "g" (Flapjack.Exp.var Flapjack.VarKind.local "mx")

def globalBody603_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mx")
  (Flapjack.Exp.var Flapjack.VarKind.local "g")) globalBody603_7 globalBody603_1

def globalBody603_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "extra_gas"],
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "stipend"]])

def globalBody603_10 : Prog (BitVec 64) :=
.seq globalBody603_8 globalBody603_9

def globalBody603_11 : Prog (BitVec 64) :=
.dec ("g") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "gas") globalBody603_10

def globalBody603_12 : Prog (BitVec 64) :=
.dec ("mx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "avail",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "avail") (Flapjack.Exp.const 6#64)]) globalBody603_11

def globalBody603_13 : Prog (BitVec 64) :=
.dec ("avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas_left", Flapjack.Exp.var Flapjack.VarKind.local "memory_cost"],
    Flapjack.Exp.var Flapjack.VarKind.local "extra_gas"]) globalBody603_12

def globalBody603_14 : Prog (BitVec 64) :=
.seq globalBody603_6 globalBody603_13

def globalBody603_15 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "extra_gas", Flapjack.Exp.var Flapjack.VarKind.local "memory_cost"]) globalBody603_14

def globalBody603_16 : Prog (BitVec 64) :=
.seq globalBody603_2 globalBody603_15

def globalBody603_17 : Prog (BitVec 64) :=
.dec ("stipend") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody603_16

def globalBody603_18 : Prog (BitVec 64) :=
.decCall ("vz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "value"]) globalBody603_17

def globalData603 : Decl (BitVec 64) :=
.function { name := "calculate_message_call_gas", inline := false, exported := false, params := [("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("gas", Flapjack.Shape.one), ("gas_left", Flapjack.Shape.one), ("memory_cost", Flapjack.Shape.one),
  ("extra_gas", Flapjack.Shape.one)], body := globalBody603_18, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput603 := Pancake.PanLang.declToHOL globalData603
end InitECandidate.Proofs.FrontendStages.Declarations
