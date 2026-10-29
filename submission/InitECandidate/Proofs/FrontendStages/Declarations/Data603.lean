import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify587
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body603_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "stipend" (Flapjack.Exp.const 2300#64)

def body603_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body603_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vz") (Flapjack.Exp.const 0#64)) body603_0 body603_1

def body603_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "s"])

def body603_4 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "stipend"]) body603_3

def body603_5 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "extra_gas"]) body603_4

def body603_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas_left")
  (Flapjack.Exp.var Flapjack.VarKind.local "need")) body603_5 body603_1

def body603_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "g" (Flapjack.Exp.var Flapjack.VarKind.local "mx")

def body603_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mx")
  (Flapjack.Exp.var Flapjack.VarKind.local "g")) body603_7 body603_1

def body603_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "extra_gas"],
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.var Flapjack.VarKind.local "stipend"]])

def body603_10 : Prog (BitVec 64) :=
.seq body603_8 body603_9

def body603_11 : Prog (BitVec 64) :=
.dec ("g") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "gas") body603_10

def body603_12 : Prog (BitVec 64) :=
.dec ("mx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "avail",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "avail") (Flapjack.Exp.const 6#64)]) body603_11

def body603_13 : Prog (BitVec 64) :=
.dec ("avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "gas_left", Flapjack.Exp.var Flapjack.VarKind.local "memory_cost"],
    Flapjack.Exp.var Flapjack.VarKind.local "extra_gas"]) body603_12

def body603_14 : Prog (BitVec 64) :=
.seq body603_6 body603_13

def body603_15 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "extra_gas", Flapjack.Exp.var Flapjack.VarKind.local "memory_cost"]) body603_14

def body603_16 : Prog (BitVec 64) :=
.seq body603_2 body603_15

def body603_17 : Prog (BitVec 64) :=
.dec ("stipend") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body603_16

def body603_18 : Prog (BitVec 64) :=
.decCall ("vz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "value"]) body603_17

def originalData603 : Decl (BitVec 64) :=
.function { name := "calculate_message_call_gas", inline := false, exported := false, params := [("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("gas", Flapjack.Shape.one), ("gas_left", Flapjack.Shape.one), ("memory_cost", Flapjack.Shape.one),
  ("extra_gas", Flapjack.Shape.one)], body := body603_18, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData603 : Decl (BitVec 64) :=
.function { name := "calculate_message_call_gas", inline := false, exported := false, params := [("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("gas", Flapjack.Shape.one), ("gas_left", Flapjack.Shape.one), ("memory_cost", Flapjack.Shape.one),
  ("extra_gas", Flapjack.Shape.one)], body := body603_18, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original603 := Pancake.PanLang.declToHOL originalData603
def simplified603 := Pancake.PanLang.declToHOL simplifiedData603
end InitECandidate.Proofs.FrontendStages.Declarations
