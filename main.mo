import IC "./ic";
import Principal "mo:base/Principal";
import Debug "mo:base/Debug";
import Option "mo:base/Option";

actor class () = self {

  public func create_canister(): async IC.canister_id {
    let settings = {
      freezing_threshold = null;
      controllers = ?[Principal.fromActor(self)];
      memory_allocation = null;
      compute_allocation = null;
    };
    let ic: IC.Self = actor("aaaaa-aa");
    let result = await ic.create_canister({settings = ?settings});
    result.canister_id
  };

  public func start_canister(id: Principal) {
    let ic: IC.Self = actor("aaaaa-aa");
    await ic.start_canister({canister_id=id});
  };

  public func stop_canister(id: Principal) {
    let ic: IC.Self = actor("aaaaa-aa");
    await ic.stop_canister({canister_id=id});
  };

  public func delete_canister(id: Principal) {
    let ic: IC.Self = actor("aaaaa-aa");
    await ic.delete_canister({canister_id=id});
  };

  public func install_code(arg: [Nat8], 
                           wasm_module: [Nat8], 
                           mode: { #reinstall; #upgrade; #install },
                           canister_id: Principal) {
    let ic: IC.Self = actor("aaaaa-aa");
    await ic.install_code({arg=arg; wasm_module=wasm_module; mode=mode; canister_id=canister_id});
  };
};
